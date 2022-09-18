namespace bitmanip
{

template <class T>
T get(uint64_t data, int firstByte, int lastByte)
{
    auto shift = BYTE_SIZE * firstByte;
    // std::cout << std::dec << "Shift: " << shift << std::hex << '\n';
    // std::cout << "Shifted data: " << (data >> shift) << '\n';
    uint64_t mask = lastByte + 1 == sizeof(uint64_t) ? -1 : (uint64_t(1) << (BYTE_SIZE * (lastByte + 1))) - 1; // 2^(l+1) - 1
    // std::cout << "Mask: " << mask << '\n';
    return T((data >> shift) & mask);
}

} // bitmanip
