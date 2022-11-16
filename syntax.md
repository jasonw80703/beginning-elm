# Elm Language

## Simple Arithmetic

You can write arithmetic in prefix style.

```elm
> 5 / 2
2.5 : Float

> (/) 5 2
2.5 : Float
```

## Bools

```elm
True || False
True && False
not True
```

Elm does not treat 0 or null as False. Something must be True to be true.

```elm
> True || 0
-- TYPE MISMATCH ---------------------------------------------------------- REPL

I am struggling with this boolean operation:

3|   True || 0
             ^
Both sides of (||) must be Bool values, but the right side is:

    number

Hint: Only Int and Float values work as numbers.
```

## Comparitors

```elm
5 == 5
5 /= 6
5 > 3
5 < 8
max 5 6
min 3 8
```

## Comments

```elm
-- look at me, a comment
5 >= 5 -- True

{-
Multiline comment
-}
```

## Expressions and Values

Expressions compute to values. Value types can include
* character
* numbers
* strings
* lists
* records (hashes)
* tuples
* functions

## Constants

Variables are camelCase.

```elm
dateOfBirth = '05/05/95'
```

## Conditionals

```elm
name = 'Jason'
if name == 'Jason' then 'found' else 'not found'
```

! Elm must provide an else branch !

```elm
if name == 'Jason' then \
    "Wang" \
  else if name == 'Boba' then \
    "Fett" \
  else \
    "not found"
```

## Functions

```elm
escapeEarth myVelocity = \
    if myVelocity > 11.86 then \
      "Godspeed" \
    else \
      "Come back"
```

Function syntax:
```elm
functionName param1 param2 =
    functionBody
```

Functions are values, and all values are expressions. You can pass in functions and return functions.

Functions in Elm use whitespace to separate a function name from its arguments.

### Partial Functions

Partial application of functions.

```elm
multiply a b = a * b
mBy3 = multiply 3 -- <function>
mBy3 4 -- 12
mBy3 5 -- 15
```

### Forward Function Application (pipe operator)

```elm
|> -- pipe operator
-- pipes result from previous expression to the next one
add a b =
    a + b

2 + 3 |>
    add 3
-- 8
```

### Backwards Function Application

```elm
<| -- backwards operators
-- pipes result from previous expression to the next one
add a b =
    a + b
```

### Let

```elm
escapeEarth myVelocity mySpeed =
    let
        escapeVelocityInKmPerSec =
            11.186
        orbitalSpeedInKmPerSec =
            7.67
    in
    if myVelocity > escapeVelocityInKmPerSec then
        "Godspeed"
    else if mySpeed == orbitalSpeedInKmPerSec then
        "Stay in orbit"
    else
        "Come back"
```

`let` creates local scope. Use `in` for expressions that use the values defined in the `let` area.

You can create functions in `let`.

### Case Expressions

```elm
weekday dayInNumber =
    case dayInNumber of
        0 ->
            "Sunday"
        1 ->
            "Monday"
        2 ->
            "Tuesday"
        3 ->
            "Wednesday"
        4 ->
            "Thursday"
        5 ->
            "Friday"
        6 ->
            "Saturday"
        _ ->
            "Unknown Day"
```