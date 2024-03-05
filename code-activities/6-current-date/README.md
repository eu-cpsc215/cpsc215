# Code Activity - Current Date Message Box

Write a 64-bit assembly program using MASM that shows a message box with the current date.

The program must do the following:

- Call the `GetDateFormatA` function to get the current date in the format `yyyy-MM-dd`.
- Call the `MessageBoxA` function to display the current date.

The `GetDateFormatA` function has the following parameters:

- `Locale` - set this to `0`.
- `dwFlags` - set this to `0`.
- `lpDate` - set this to `0`.
- `lpFormat` - a pointer to a string with formatting codes telling the system in what format to
  return the current date. For this example, use the format string `yyyy-MM-dd`.
- `lpDateStr` - a pointer to a string buffer for the system to store the current date string.
- `cchDate` - the size of the `lpDateStr` string buffer.

The `MessageBoxA` function has the following parameters:

- `hWnd` - set this to `0`.
- `lpText` - a pointer to the text to display in the message box.
- `lpCaption` - a pointer to the caption of the message box. You can set this to `0`.
- `uType` - set this to `0`.

References:

- https://learn.microsoft.com/en-us/windows/win32/api/datetimeapi/nf-datetimeapi-getdateformata
- https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messageboxa
