// Author: Eduardo Chielle

#pragma once

#include <iostream>

namespace extractor
{

#ifndef DEBUG
#define DEBUG false
#endif

#define WIDTH 8 // bytes

struct ExtractorOutput
{
    bool valid; // the output has new data
    uint64_t payload;
    uint8_t keep; // how many bytes are valid
    uint8_t divider; // how many bytes belong to payload 2
    bool last; // it is the last part of the payload
    bool done; // signalizes the delivery of all payloads of a stream
    ExtractorOutput() : ExtractorOutput(false, 0, 0, 0, false, false) {}
    ExtractorOutput(bool v, uint64_t p, uint8_t k, uint8_t div, bool l, bool d) :
        valid(v), payload(p), keep(k), divider(div), last(l), done(d) {}
};

struct State
{
    uint16_t msgCount = 0;
    uint16_t msgLength = 0;
    bool isMsgLengthIncomplete = false;
};

extern State state;

std::ostream & operator<<(std::ostream & os, const ExtractorOutput & output);
std::ostream & operator<<(std::ostream & os, const State & state);
ExtractorOutput extract(bool valid, uint64_t data, bool last);

} // extractor
