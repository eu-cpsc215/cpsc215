/*
To have MSVC generate assembly output:

Project Properties -> C/C++ -> Output Files -> Assembler Output
*/

int add(int a, int b)
{
	return a + b;
}

int main()
{
	int val = add(2, 3);
	return val;
}
