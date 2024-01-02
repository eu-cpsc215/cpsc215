# Code Activity - MUL/DIV

1. Activity 1

Multiply two 64-bit numbers together. Store the upper 64 bits of the result in `R9` and the lower 64 bits of the result in `R10`.

2. Activity 2

Calculate the total number of pixels in a display given a width and height in pixels.

Create three variables: `a2_width`, `a2_height`, and `a2_totalPixels`.

- Initialize `a2_width` to `1920`.
- Initialize `a2_height` to `1080`.
- Leave `a2_totalPixels` uninitialized.

Compute the total number of pixels. You can use 64 bit operands and discard the upper 64 bits of the result. Store the lower 64 bits of the in `a2_totalPixels`.

3. Activity 3

Calculate `7484 / 3` using a `DIV` instruction with a 64-bit divisor. Store the quotient in `R11` and the remainder in `R12`.

4. Activity 4

Calculate `523 / 5` using a `DIV` instruction with an 8-bit divisor. Store the quotient in `CL` and the remainder in `DL`.

5. Activity 5

Convert a length in inches into the equivalent feet and inches. For example, given an input of 35 inches, the output would be 2 feet and 11 inches.

Create three variables: `a5_inputInches`, `a5_outputFeet`, `a5_outputInches`.

- Initialize `a5_inputInches` to `123`.
- Leave the output variables uninitialized.

Compute the equivalent feet and inches for the given input variable, and store the results in `a5_outputFeet` and `a5_outputInches`.

6. Activity 6

Given two input lengths in inches, compute the difference between the first and second lengths, then convert the difference to feet and inches. For example, given an input of 82 inches and 54 inches, the difference is 2 feet and 4 inches.

Create four variables: `a6_inputInchesA`, `a6_inputInchesB`, `a6_outputFeet`, `a6_outputInches`.

- Initialize `a6_inputInchesA` to `97`.
- Initialize `a6_inputInchesB` to `46`.
- Leave the output variables uninitialized.

Compute the difference in inches (`A - B`), then covert the difference into feet and inches. Store the result in `a6_outputFeet` and `a6_outputInches`.
