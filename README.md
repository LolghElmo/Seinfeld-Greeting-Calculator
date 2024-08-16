# Seinfeld-Inspired Haskell Program

## Overview

This Haskell program is inspired by **Season 7, Episode 24 of Seinfeld**. In a memorable scene, the character Kramer visits a bank that offers $100 to anyone not greeted with a "hello." Instead of "hello," Kramer is greeted with "hey," and he insists that this doesn't count, leading to a humorous negotiation with the bank manager.

Our program mimics this scenario by evaluating user-inputted greetings and assigning different values based on the greeting.

## How It Works

### The `processString` Function

- **"hello"**: If the input starts with "hello" (ignoring case and leading spaces), the function returns `0`, just like the bank's promise.
- **'h'**: If the input starts with the letter 'h' (but isn't "hello"), the function returns `20`.
- **Anything Else**: For any other greeting, the function returns `100`, reflecting Kramer's argument that the greeting isn't "hello."

### The `main` Function

- The program runs in a loop, asking the user to input a greeting.
- After processing the input with `processString`, it displays the corresponding result.
- The loop continues until the user types 'e' to exit.

## Usage

### Running the Program

1. **Enter a Greeting**: 
   - Type any greeting, such as "hello," "hey," or anything else.
   - Example: 
     - Input: `hello`
     - Output: `Result: 0 $`

2. **Exit**:
   - To quit, type `e`.
   - The program will display a message and stop running.

### Example Interactions

- **Example 1**:  
  Input: `hello`  
  Output: `Result: 0 $`
  
- **Example 2**:  
  Input: `hey`  
  Output: `Result: 20 $`
  
- **Example 3**:  
  Input: `good morning`  
  Output: `Result: 100 $`

## Purpose

This playful piece of code is a homage to a classic Seinfeld moment, showing how simple logic can mimic real-world situations. It's perfect for fans of the show or anyone learning Haskell.

---

Enjoy the program, and remember—if you’re ever at a bank offering $100 for a "hello," be sure to check exactly what they say!
