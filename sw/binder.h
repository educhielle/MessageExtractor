// Author: Eduardo Chielle

#pragma once

#include <vector>
#include "extractor.h"

namespace binder
{

struct BinderOutput
{
    bool valid; // the output has new data
    std::vector<uint8_t> payload;
    bool done; // signalizes the delivery of all payloads of a stream

    BinderOutput() : BinderOutput(false, std::vector<uint8_t>(), false) {}
    BinderOutput(bool v, std::vector<uint8_t> p, bool d) :
        valid(v), done(d) { payload.assign(p.begin(), p.end()); }
};

extern std::vector<uint8_t> payload;

std::ostream & operator<<(std::ostream & os, const BinderOutput & output);
std::ostream & operator<<(std::ostream & os, const std::vector<uint8_t> & output);
BinderOutput bind(const extractor::ExtractorOutput & extractor);

} // binder
