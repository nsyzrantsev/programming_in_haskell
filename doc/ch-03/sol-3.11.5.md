## Exercise 3.11.5

Why is it not feasible in general for function types to be instances of the Eq class? When is it feasible? Hint: two functions of the same type are equal if they always return equal results for equal arguments.

## Solution

Functions with a few arguments sometimes can return different values. And assert that they are always equal is impossible. For checking equality of the functions it is necessary to create a technology to do it for the all possible functions.

Class Eq is feasible for the simple functions, that get a fixed number of arguments and accept a Bool type.
