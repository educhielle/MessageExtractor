#pragma once

namespace bitmanip
{

template <class T>
T get(uint64_t data, int firstByte, int lastByte)
{
    auto shift = BYTE_SIZE * firstByte;
    uint64_t mask = lastByte + 1 == sizeof(uint64_t) ? -1 : (uint64_t(1) << (BYTE_SIZE * (lastByte + 1))) - 1; // 2^(l+1) - 1
    return T((data >> shift) & mask);
}

} // bitmanip
