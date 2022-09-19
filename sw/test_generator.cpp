// Author: Eduardo Chielle

#include <iostream>
#include <iomanip>
#include "generator.h"

using namespace generator;
using namespace std;

int main()
{
    cout << hex << setfill('0');
    auto bs = generatePayload();
    cout << "Message Count: " << bs.messageCount << '\n';
    for (int i=0; i<bs.messageLengths.size(); i++)
    {
        cout << setw(2) << bs.messageLengths[i] << " :" << flush;
        for (auto & byte : bs.payloads[i]) cout << " " << setw(2) << int(byte);
        cout << '\n';
    }

    int nbytes = 2 * (bs.messageLengths.size() + 1);
    for (auto & payload : bs.payloads) nbytes += payload.size();
    cout << "nbytes: " << nbytes << '\n';

    auto data_vector = formatPayload(bs);
    cout << "Data vector: " << data_vector.size() << '\n';
    for (auto & data : data_vector) cout << setw(16) << data << '\n';
}
