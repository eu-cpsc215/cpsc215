#include <stdint.h>
#include <stdio.h>

void function_to_call(uint64_t a, uint64_t b, uint64_t c, uint64_t d, uint64_t e, uint64_t f)
{
	printf("Function called: %llu, %llu, %llu, %llu, %llu, %llu", a, b, c, d, e, f);
}
