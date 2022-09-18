#pragma once

#include <iostream>
#include <vector>
#include "generator_const.h"

namespace generator
{

struct ByteStream
{
    uint16_t messageCount;
    std::vector<uint16_t> messageLengths;
    std::vector<std::vector<uint8_t>> payloads;
};

std::vector<uint64_t> formatPayload(const ByteStream & bs);
ByteStream generatePayload();
void package(std::vector<uint64_t> & data_vector, uint64_t & data, int & bytesLeft, uint8_t byte);
void package(std::vector<uint64_t> & data_vector, uint64_t & data, int & bytesLeft, uint16_t info);
template <class T> T randomValue(int min, int max);

} // generator

#include "generator.hpp"
