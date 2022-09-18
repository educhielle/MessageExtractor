#include <iostream>
#include <iomanip>
#include <vector>
#include "bitmanip.h"

using namespace bitmanip;
using namespace std;

#define WIDTH 8 // bytes

#ifndef DEBUG
#define DEBUG true
#endif

struct State
{
    uint16_t msgCount = 0;
    uint16_t msgLength = 0;
    bool isMsgLengthIncomplete = false;
} state;

struct Output
{
    bool valid; // the output has new data
    uint64_t payload;
    uint8_t keep; // how many bytes are valid
    uint8_t divider; // how many bytes belong to payload 2
    bool last; // it is the last part of the payload
    bool done; // signalized the delivery of all payloads of a stream
    Output() : Output(false, 0, 0, 0, false, false) {}
    Output(bool v, uint64_t p, uint8_t k, uint8_t div, bool l, bool d) :
        valid(v), payload(p), keep(k), divider(div), last(l), done(d) {}
};

ostream & operator<<(ostream & os, const State & state)
{
    return os << setw(4) << state.msgCount
        << " " << setw(4) << state.msgLength
        << " " << state.isMsgLengthIncomplete;
}

ostream & operator<<(ostream & os, const Output & output)
{
    return os << output.valid << " " << output.last << " " << output.done
        << " " << int(output.keep) << " " << int(output.divider)
        << " " << setw(16) << output.payload;
}

Output extractor(bool valid, uint64_t data, bool last);

int main()
{
    cout << hex << setfill('0');
    // cout << "V L D K D PAYLOAD\n";
    if (DEBUG)
    {
        cout << "TP | MCNT MLEN I | V L D K D PAYLOAD\n";
        cout << "------------------------------------\n";
    }
    vector<uint64_t> data_vector{ 0x0003001388990000, 0x0123456789abcdef, 0x00feeddeadc00000,
                                  0x0a00082233445566, 0x880000000a000000, 0x8746518494105156};
    for (int i=0; i<data_vector.size(); i++)
    {
        bool valid = true;
        bool last = i == data_vector.size()-1;
        auto & data = data_vector[i];
        auto output = extractor(valid, data, last);
        // cout << output << '\n';
    }
}

Output extractor(bool valid, uint64_t data, bool last)
{
    if (valid) // consider only valid inputs
    {
        if (!state.msgCount) // beginning of package
        {
            state.msgCount = get<int16_t>(data, WIDTH-2, WIDTH-1); // get message count
            if (!state.msgCount) return Output(); // the message count informed is zero

            state.msgLength = get<int16_t>(data, WIDTH-4, WIDTH-3); // get message length
            if (DEBUG) cout << "1D | " << state << flush;

            // message length ranges from 8 to 32 bytes
            // so the remaining of this message must be payload
            // and the message will continue in the following input data
            int8_t nBytes = WIDTH-4;
            auto payload = get<uint64_t>(data, 0, nBytes-1);
            state.msgLength -= nBytes;

            // outputing a 4-byte part of the payload
            // more of the payload to come in the next cycle(s)
            Output output(true, payload, nBytes, 0, false, false);
            if (DEBUG) cout << " | " << output << '\n';
            return output;
        }
        else // following input data
        {
            // this input data certainly cointans payload
            // may contain message length
            // and does not contain message count

            // at least part of the new message length is in new the input data
            if (!state.msgLength || state.isMsgLengthIncomplete)
            {
                int8_t nBytes = WIDTH;
                // partial msgLength may be caused by odd payload length
                if (state.isMsgLengthIncomplete)
                {
                    state.msgLength |= get<int8_t>(data, WIDTH-1, WIDTH-1);
                    nBytes -= 1;
                }
                else
                {
                    state.msgLength = get<int16_t>(data, WIDTH-2, WIDTH-1);
                    nBytes -= 2;
                }
                state.isMsgLengthIncomplete = false;
                if (DEBUG) cout << "PL | " << state << flush;
                auto payload = get<uint64_t>(data, 0, nBytes-1);
                state.msgLength -= nBytes;

                // more of the payload to come in the next cycle(s)
                Output output(true, payload, nBytes, 0, false, false);
                if (DEBUG) cout << " | " << output << '\n';
                return output;

            }
            else if (state.msgLength >= WIDTH)
            {
                if (DEBUG) cout << ">= | " << state << flush;
                state.msgLength -= WIDTH;
                bool last = !state.msgLength;
                if (last) state.msgCount--;
                auto done = !state.msgCount;
                auto payload = get<uint64_t>(data, 0, WIDTH-1);

                Output output(true, payload, WIDTH, 0, last, done);
                if (DEBUG) cout << " | " << output << '\n';
                return output;
            }
            else // msgLength < WIDTH
            {
                if (DEBUG) cout << "<W | " << state << flush;
                auto nBytes = WIDTH-state.msgLength;
                auto payload = get<uint64_t>(data, nBytes, WIDTH-1);
                int8_t keep = state.msgLength;
                int8_t divider = 0;
                bool last = true;
                state.msgCount--;
                auto done = !state.msgCount;
                if (state.msgCount && nBytes)
                {
                    if (nBytes == 1) // partial msgLength
                    {
                        state.msgLength = get<uint8_t>(data, nBytes-1, nBytes-1);
                        state.isMsgLengthIncomplete = true;
                    }
                    else // nBytes >= 2
                    {
                        state.msgLength = get<uint16_t>(data, nBytes-2, nBytes-1);
                        nBytes -= 2;
                        if (nBytes)
                        {
                            payload <<= BYTE_SIZE * nBytes;
                            payload |= get<uint64_t>(data, 0, nBytes-1);
                            state.msgLength -= nBytes;
                            keep += nBytes;
                            divider = nBytes;
                        }
                    }
                }

                Output output(true, payload, keep, divider, last, done);
                if (DEBUG) cout << " | " << output << '\n';
                return output;
            }
        }
    }
    Output output; // no valid input
    if (DEBUG) cout << "!! | " << state << " | " << output << '\n';
    return output;
}
