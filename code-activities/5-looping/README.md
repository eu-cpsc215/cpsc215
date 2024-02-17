# Code Activity - Looping

Given an array named `numbers`, add all the numbers in the array and return the value. Each element in the array is of size `QWORD` (64 bits).

Here is an example of similar C code:

```
#include <stdint.h>

uint64_t numbers[] = { 1, 82, 4, 9, 17, 214, 0, 52 };
uint64_t sum = 0;

uint64_t main()
{
	for (int i = 0; i < sizeof(numbers); i++)
	{
		sum += numbers[i];
	}

	return sum;
}
```
