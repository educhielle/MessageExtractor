// Author: Eduardo Chielle

#pragma once

namespace generator
{

template <class T>
T randomValue(int min, int max)
{
    return T( min + (rand() % (max-min+1)) );
}

} // generator
