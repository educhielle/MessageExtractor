// Author: Eduardo Chielle

#include "extractor.h"

#include <iomanip>
#include <vector>
#include "bitmanip.h"

using namespace bitmanip;
using namespace std;

namespace extractor
{

State state;

ostream & operator<<(ostream & os, const ExtractorOutput & output)
{
    return os << output.valid << " " << output.last << " " << output.done
        << " " << int(output.keep) << " " << int(output.divider)
        << " " << setw(16) << output.payload;
}

ostream & operator<<(ostream & os, const State & state)
{
    return os << setw(4) << state.msgCount
        << " " << setw(4) << state.msgLength
        << " " << state.isMsgLengthIncomplete;
}

ExtractorOutput extract(bool valid, uint64_t data, bool last)
{
    if (valid) // consider only valid inputs
    {
        if (!state.msgCount) // beginning of package
        {
            state.msgCount = get<int16_t>(data, WIDTH-2, WIDTH-1); // get message count
            if (!state.msgCount) // the message count informed is zero
            {
                ExtractorOutput output; // no valid input
                if (DEBUG) cout << "!! | " << state << " | " << output << '\n';
                return output;
            }

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
            ExtractorOutput output(true, payload, nBytes, 0, false, false);
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
                ExtractorOutput output(true, payload, nBytes, 0, false, false);
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

                ExtractorOutput output(true, payload, WIDTH, 0, last, done);
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

                ExtractorOutput output(true, payload, keep, divider, last, done);
                if (DEBUG) cout << " | " << output << '\n';
                return output;
            }
        }
    }
    ExtractorOutput output; // no valid input
    if (DEBUG) cout << "!! | " << state << " | " << output << '\n';
    return output;
}

} // extractor
