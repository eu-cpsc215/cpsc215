# Calling printf in x64 Assembly

Printing information to the console window is a natural urge once you start playing with assembly language. Programs that output information are much more interesting. The information below documents how to call `printf` and other standard library functions from a x64 program written in pure assembly using Visual Studio.

To begin, create a Visual Studio assembly project following the instructions in [the IDE setup guide](../examples/1-ide-setup/). Once you have a basic assembly program working, open the project settings and make the changes described below.

1. In `Linker` -> `Input`, add the following `Additional Dependencies`:

```
legacy_stdio_definitions.lib
msvcrt.lib
```

2. In `Linker` -> `System`, set `SubSystem` to `Console (/SUBSYSTEM:CONSOLE)`.
3. In `Linker` -> `Advanced`, **clear** the `Entry Point`. The value should be blank.

Save changes to the project.

In your assembly source file, make sure you have a function named `main` defined (exactly that name, no leading `_` or anything). Why? This configuration links the program against the [CRT](https://learn.microsoft.com/en-us/cpp/c-runtime-library/crt-library-features?view=msvc-170). The CRT entry point calls `main`, which is why you need to define that function in your assembly source and why you don't specify an entry point to the linker.

You should now be able to use printf in your assembly program now.

## References
- https://stackoverflow.com/questions/64413414/unresolved-external-symbol-printf-in-windows-x64-assembly-programming-with-nasm
- https://social.msdn.microsoft.com/Forums/vstudio/en-US/71a80e19-4e6a-41fe-b1db-26e331da474d/linking-errors-lnk2001-unresolved-external-symbol-when-compiled-by-nasm?forum=vclanguage
- https://stackoverflow.com/questions/64993943/what-where-is-scrt-common-main-seh
- https://learn.microsoft.com/en-us/cpp/porting/visual-cpp-change-history-2003-2015
