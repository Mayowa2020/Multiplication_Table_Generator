# Multiplication Table Generator

## Overview

This project serves as a practical application of Bash scripting fundamentals, emphasizing loops, conditional logic, and user interaction. By completing this task, you'll enhance your skills in automating tasks and improving your scripting proficiency.

## Objective

The objective of this Bash script is to generate a multiplication table for a given number. The script prompts the user to enter a number and then displays the multiplication table for that number up to 10. It utilizes both styles of For Loops: the list form and the C-style form.

## Implementation Details

### Part 1: Using List Form For Loop

1. **Prompt the User:**

   - The script asks the user to input a number using the `read` command and captures this input into a variable.

2. **Generate Multiplication Table:**
   - Utilizes a list form for loop to iterate through the numbers 1 to 10.
   - In each iteration, calculates the product of the user's number and the iterator variable, then prints the result in a clear format.

Example output for a number:

```
Enter a number: 3
3 x 1 = 3
3 x 2 = 6
...
3 x 10 = 30
```

### Part 2: Using C-style For Loop

1. **Repeat the Prompt:**

   - Proceeds with the C-style loop using the same variable without asking the user again.

2. **Generate Multiplication Table with C-style Loop:**
   - Writes a C-style for loop to achieve the same task as in Part 1.
   - Compares how this approach differs from the list form loop in terms of syntax and clarity.

## Guidelines

- Ensure the output is user-friendly and clearly formatted.
- Comment your code to explain which part is using the list form and which part is using the C-style.
- Ask the user if they want to see the table in ascending or descending order, and implement this feature using if-else statements combined with your loop of choice.

## Author

This Multiplication Table Generator script was developed as a learning exercise by [Bukky Oyetimehin].

## License

This script is released under the [MIT License](https://opensource.org/licenses/MIT). Feel free to use, modify, and distribute it as per the terms of the license.
