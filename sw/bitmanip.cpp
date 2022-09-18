#include "bitmanip.h"

namespace bitmanip
{

uint8_t getByte(uint64_t data, int idx)
{
    auto shift = BYTE_SIZE * idx;
    return (data >> shift) & BYTE_MASK;
}

uint16_t getShort(uint64_t data, int idx)
{
    auto shift = SHORT_SIZE * idx;
    return (data >> shift) & SHORT_MASK;
}

} // bitmanip
