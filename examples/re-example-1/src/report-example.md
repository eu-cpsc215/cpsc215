# Example 1 Report

- Prepared by: First Last
- Date: 2023-01-31
- File: `re-example-1.exe`
- SHA256: `81C2CD20BF1502EFB8A22107DA6B3F4F74376B97C4E70BF4596AAC0255388BA5`

## Summary

The program displays a message box with one of two messages based on the executable’s file path. If stored on the `C` drive, the message box displays “You lose!”. For all other cases, the message box displays “You win!”.

## Analysis

The program uses the `GetModuleFileNameA` function to get the file path of the running executable. The file path is analyzed to see if it contains a drive letter by checking if the first character is succeeded by the two characters `:\` (a colon followed by a backslash).

If the program determines there is a drive letter, the letter is converted to lowercase and compared against the character `c`. If the drive letter is `c`, then the program displays the winning message box. For all other cases, the losing message box is displayed.

The following pseudo-code demonstrates the program's behavior.

```
filePath = GetModuleFileNameA()
message = "You lose!"

IF filePath.length >= 3 AND filePath[1] == ':' AND filePath[2] == '\' THEN
	driveLetter = convert filePath[0] to lowercase
	IF driveLetter == 'c' THEN
		message = "You win!"
	END IF
END IF

MessageBoxA(message)
```
