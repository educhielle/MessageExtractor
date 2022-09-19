// Author: Eduardo Chielle

#pragma once

#include <iostream>

namespace bitmanip
{

#define BYTE_SIZE 8
#define BYTE_MASK 0xFF
#define SHORT_SIZE 16
#define SHORT_MASK 0xFFFF

template <class T> T get(uint64_t data, int firstByte, int lastByte);

} // bitmanip

#include "bitmanip.hpp" // template functions
