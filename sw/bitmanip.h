#pragma once

#include <iostream>

namespace bitmanip
{

#define BYTE_SIZE 8
#define BYTE_MASK 0xFF
#define SHORT_SIZE 16
#define SHORT_MASK 0xFFFF

uint8_t getByte(uint64_t data, int idx);
uint16_t getShort(uint64_t data, int idx);

} // bitmanip

#include "bitmap.hpp" // template functions
