#ifndef N_STREAMS
#define N_STREAMS 1
#endif

#include <iomanip>
#include <iostream>
#include <vector>
#include "binder.h"
#include "extractor.h"
#include "generator.h"

using namespace binder;
using namespace extractor;
using namespace generator;
using namespace std;

template <class T>
bool compareVectors(const vector<T> & v1, const vector<T> & v2)
{
    if (v1.size() != v2.size()) return false;
    for (int i=0; i<v1.size(); i++) if (v1[i] != v2[i]) return false;
    return true;
}

int main()
try
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
        }

        int idx = 0;
        auto data_vector = formatPayload(bs);
        for (int i=0; i<data_vector.size(); i++)
        {
            bool valid = true;
            bool last = i == data_vector.size()-1;
            auto & data = data_vector[i];
            auto output = extract(valid, data, last);
            auto bo = bind(output);
            if (bo.valid)
            {
                auto comparison = compareVectors(bo.payload, bs.payloads[idx++]);
                cout << "Match: " << boolalpha << comparison << noboolalpha << " " << bo.payload << '\n';
                if (!comparison) throw "BinderOutput is incorrect";
            }
        }
    }
}
catch (const char * error) { cout << error << '\n'; }
