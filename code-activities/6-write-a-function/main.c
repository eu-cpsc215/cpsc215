#include <stdint.h>
#include <stdio.h>

uint64_t add_numbers(uint64_t a, uint64_t b);

void main()
{
	uint64_t output = add_numbers(2000, 1024);
	printf("Result: %llu", output);
}
