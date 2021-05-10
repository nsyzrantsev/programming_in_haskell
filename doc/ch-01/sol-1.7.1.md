## Exercise 1.7.1

Give another possible calculation for the result of `double (double 2)`.
``` haskell
double x = x + x
```

## Solution

#### Normal order / Outermost evalutaion
``` haskell
λ> double 2 + double 2
λ> 2 + 2 + double 2
λ> 4 + double 2
λ> 4 + 2 + 2
λ> 4 + 4
λ> 8
```
6 operations

#### Applicative order / Innermost evaluation

```haskell
λ> double (2 + 2)
λ> double 4
λ> 4 + 4
λ> 8
```
4 operations

#### Lazy evalutaion ("call by need")

```haskell
λ> double 2 + double 2
λ> 2 + 2 + 2 + 2
λ> 4 + 4
λ> 8
```
4 operations
