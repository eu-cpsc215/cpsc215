#include <assert.h>
#include <stdint.h>
#include <stdio.h>

void CallStackExamples();

// Assembly proc declarations
void AsmFunctionExample0();
void AsmFunctionExample1(int a, float b, const char* c);
int64_t AsmFunctionExample2(int64_t a, int64_t b, int64_t c, int64_t d, int64_t e, int64_t f);
void AsmFunctionExample3();
void AsmFunctionExample4(int (*functionPtr)(int));
void AsmFunctionExample5();

static int functionToPointTo(int a)
{
	return a * 2;
}

// Program entry point
void main()
{
	CallStackExamples();

	AsmFunctionExample0();
	AsmFunctionExample1(256, 12.3f, "hello, world");
	int64_t e2 = AsmFunctionExample2(10, 20, 30, 40, 50, 60);
	AsmFunctionExample3();
	AsmFunctionExample4(functionToPointTo);
	AsmFunctionExample5();
}
