// Author: Eduardo Chielle

#include "generator.h"

#include <iomanip>
#include "bitmanip.h"

using namespace bitmanip;
using namespace std;

namespace generator
{

vector<uint64_t> formatPayload(const ByteStream & bs)
{
    vector<uint64_t> data_vector;
    int bytesLeft = WIDTH;
    uint64_t data = 0;

    package(data_vector, data, bytesLeft, bs.messageCount);
    for (int i=0; i<bs.messageLengths.size(); i++)
    {
        package(data_vector, data, bytesLeft, bs.messageLengths[i]);
        for (auto & byte : bs.payloads[i])
            package(data_vector, data, bytesLeft, byte);
    }

    if (bytesLeft > 0 && bytesLeft < WIDTH)
    {
        data <<= BYTE_SIZE * bytesLeft;
        data_vector.push_back(data);
    }

    return data_vector;
}

ByteStream generatePayload()
{
    ByteStream bs;
    auto messageCount = randomValue<uint16_t>(MIN_MESSAGE_COUNT, MAX_MESSAGE_COUNT);
    bs.messageCount = messageCount;
    while (messageCount--)
    {
        auto messageLength = randomValue<uint16_t>(MIN_MESSAGE_LENGTH, MAX_MESSAGE_LENGTH);
        bs.messageLengths.push_back(messageLength);
        bs.payloads.push_back(vector<uint8_t>());
        while (messageLength--)
            bs.payloads.back().push_back( randomValue<uint8_t>(0, 0xff) );
    }
    return bs;
}

void package(vector<uint64_t> & data_vector, uint64_t & data, int & bytesLeft, uint8_t byte)
{
    data <<= BYTE_SIZE;
    data |= byte;
    bytesLeft -= 1;
    if (!bytesLeft)
    {
        data_vector.push_back(data);
        data = 0;
        bytesLeft = WIDTH;
    }
}

void package(vector<uint64_t> & data_vector, uint64_t & data, int & bytesLeft, uint16_t info)
{
    if (bytesLeft == 1)
    {
        data <<= BYTE_SIZE;
        data |= get<uint8_t>(uint64_t(info), 1, 1);
        data_vector.push_back(data);
        data = get<uint8_t>(uint64_t(info), 0, 0);
        bytesLeft = WIDTH - 1;
    }
    else
    {
        data <<= SHORT_SIZE;
        data |= info;
        bytesLeft -= 2;
        if (!bytesLeft)
        {
            data_vector.push_back(data);
            data = 0;
            bytesLeft = WIDTH;
        }
    }
}

} // generator
