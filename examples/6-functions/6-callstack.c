#include <assert.h>
#include <stdint.h>
#include <stdio.h>

static void runawayRecursion()
{
	// This won't end well.
	runawayRecursion();
}

static int funcC(int a, int b)
{
	return a + b;
}

static int funcB(int a, int b)
{
	int c = a + b;
	return funcC(a, c);
}

static int funcA(int a, int b)
{
	int c = a * b;
	return funcB(a, c);
}

void CallStackExamples()
{
	//runawayRecursion();
	funcA(1, 2);
}
