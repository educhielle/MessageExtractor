// Author: Eduardo Chielle

#ifndef N_STREAMS
#define N_STREAMS 1
#endif

#include <iomanip>
#include <iostream>
#include <vector>
#include "extractor.h"
#include "generator.h"

using namespace extractor;
using namespace generator;
using namespace std;

int main()
{
    cout << hex << setfill('0');
    for (int i=0; i<N_STREAMS; i++)
    {
        auto bs = generatePayload();
        cout << "Message Count: " << bs.messageCount << '\n';
        for (int i=0; i<bs.messageLengths.size(); i++)
        {
            cout << setw(2) << bs.messageLengths[i] << " :" << flush;
            for (auto & byte : bs.payloads[i]) cout << " " << setw(2) << int(byte);
            cout << '\n';
        }

        if (DEBUG)
        {
            cout << "TP | MCNT MLEN I | V L D K D PAYLOAD\n";
            cout << "------------------------------------\n";
        } else cout << "V L D K D PAYLOAD\n";

        auto data_vector = formatPayload(bs);
        for (int i=0; i<data_vector.size(); i++)
        {
            bool valid = true;
            bool last = i == data_vector.size()-1;
            auto & data = data_vector[i];
            auto output = extract(valid, data, last);
            if (!DEBUG) cout << output << '\n';
        }
    }
}
