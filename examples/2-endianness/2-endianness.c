#include <stdint.h>

int main()
{
	uint32_t fourByteInt = 0x12345678;     // Store 4-byte integer value in memory
	uint8_t* bytePtr = (uint8_t*)&fourByteInt;   // Get a pointer to that value in memory.
	uint8_t first = bytePtr[0];
	uint8_t second = bytePtr[1];
	uint8_t third = bytePtr[2];
	uint8_t fourth = bytePtr[3];

	// Set breakpoint and observe the values of the variables above.
	// Use memory debug window and observe value of bytes in memory.

	uint16_t twoByteInt = 0x2143;
	bytePtr = (uint8_t*)&twoByteInt;
	first = bytePtr[0];
	second = bytePtr[1];

	const char* str = "ABC";
	first = str[0];
	second = str[1];
	third = str[2];
	fourth = str[3];

	return 0;
}
