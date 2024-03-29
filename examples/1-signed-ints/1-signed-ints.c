// Gives nice, clear integer types: uint8_t, int8_t, etc.
#include <stdint.h>

int main(int argc, char** argv)
{
	// Observe values in memory window

	uint8_t uint8Val = 255;
	int8_t* int8Ptr = &uint8Val;

	uint32_t uint32Val = 0xFFFFFFFF;
	int32_t* int32Ptr = &uint32Val;

	uint32Val = 0xFFFF1234;
	int16_t* int16Ptr = (int16_t*)&uint32Val;

	/*
	Unsigned overflow/underflow
	*/

	uint8_t unsignedCounter = 255;
	unsignedCounter++;
	unsignedCounter++;

	unsignedCounter = 0;
	unsignedCounter--;
	unsignedCounter--;

	unsignedCounter = 256;

	unsignedCounter = 257;

	unsignedCounter = -255;

	/*
	Signed overflow/underflow
	*/

	int8_t signedCounter = 127;
	signedCounter++;
	signedCounter++;

	signedCounter = 0;
	signedCounter--;
	signedCounter--;

	signedCounter = -128;
	signedCounter--;
	signedCounter--;

	signedCounter = 255;

	return 0;
}
