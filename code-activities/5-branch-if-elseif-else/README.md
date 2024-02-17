# Code Activity - If/Else If/Else

Write an assembly program that replicates the behavior of the following C code:

```
int32_t input_var = 5;

int32_t main()
{
	if (input_var == 2)
		return 0;
	else if (input_var == 3 || input_var == 4)
		return 1;
	else
		return 2;
}
```

To set the return value of the process, make sure the value you want to return is in the RCX register before the instruction `call ExitProcess` is executed.
