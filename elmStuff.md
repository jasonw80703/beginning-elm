# Unique Important Elm Stuff

## Immutability

All elm values are immutable. Immutability makes code more maintainable.

```elm
-- happy elm constant (not variable)
x = 1
y = x + 1

-- sad
x = 1
x = x + 1
```

## Pure Functions

Functions that always return the same output given the same input, with no side effects.

An Elm function doesn’t remember one or more preceding events in a given sequence of operations. Each interaction with a function happens based entirely on the information given to it.

Benefits:
* easy to understand code (less surprises)
* easy to debug
* easy to test
* break down into simple functions