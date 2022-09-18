#include "binder.h"

#include <iomanip>
#include <iostream>
#include "bitmanip.h"

using namespace bitmanip;
using namespace extractor;
using namespace std;

namespace binder
{

vector<uint8_t> payload;

ostream & operator<<(ostream & os, const BinderOutput & output)
{
    os << output.valid << " " << output.done << " {";
    for (auto & byte : output.payload) os << " " << int(byte);
    return os << " }";
}

ostream & operator<<(ostream & os, const vector<uint8_t> & output)
{
    os << "{";
    for (auto & byte : output) os << " " << int(byte);
    return os << " }";
}

template <class T>
bool compareVectors(const vector<T> & v1, const vector<T> & v2)
{
    if (v1.size() != v2.size()) return false;
    for (int i=0; i<v1.size(); i++) if (v1[i] != v2[i]) return false;
    return true;
}

BinderOutput bind(const ExtractorOutput & extractor)
{
    if (extractor.valid)
    {
        BinderOutput output;
        auto keep = extractor.keep;
        auto divider = extractor.divider;
        while (keep-- > divider)
            payload.push_back(get<uint8_t>(extractor.payload, keep, keep));
        if (extractor.last)
        {
            output = BinderOutput(true, payload, extractor.done);
            payload.clear();
        }
        while (divider--) payload.push_back(get<uint8_t>(extractor.payload, divider, divider));
        if (DEBUG) cout << output << " " << payload << '\n';
        return output;
    }
    BinderOutput output;
    if (DEBUG) cout << output << '\n';
    return output;
}

} // binder
