/*
REQUIRED_ARGS: -HC -c -o-
PERMUTE_ARGS:
TEST_OUTPUT:
---
// Automatically generated by Digital Mars D Compiler v$n$

#pragma once

#include <stddef.h>
#include <stdint.h>


struct S
{
    union
    {
        int32_t x;
        char c[4$?:32=u|64=LLU$];
    };
    struct
    {
        int32_t y;
        double z;
        extern "C" void foo();
        void bar();
    };
    S() {}
};
---
*/

extern (C++) struct S
{
    union
    {
        int x;
        char[4] c;
    }

    struct
    {
        int y;
        double z;
        extern(C) void foo() {}
        extern(C++) void bar() {}
    }
}
