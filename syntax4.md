# Elm Language pt 4

## Tuples

Tuples can contains various data types. They can contain lists or arrays of tuples.

Tuples can only have up to 3 elements. They are immutable and we cannot add or remove elements.

```elm
( 1, 2 )
```

Tuples are used for function returns with multiple values.

```elm
import Html
import Regex

validateEmail email =
    let
        emailPattern =
            "\\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}\\b"

        regex =
            Maybe.withDefault Regex.never <|
                Regex.fromString emailPattern

        isValid =
            Regex.contains regex email
    in
    if isValid then
        ( "Valid email", "green" )

    else
        ( "Invalid email", "red" )
```

Can pass in a tuple to ensure the input is a certain size.

```elm
trianglePerimeter ( a, b, c ) = a + b + c
trianglePerimeter ( 5, 4, 6 ) -- 15

trianglePerimeter ( 5, 4 ) -- type mismatch
```

Access first and second elements in a pair.

```elm
Tuple.first ( 8, 10 ) -- 8
Tuple.second ( 8, 10 ) -- 10
```

## Records

Objects basically.

```elm
{ name = 'Firefly', colour = 'Blue', age = '22' }
```

Type aliases

```elm
type alias TVShow = { creator : String, episodes : Int, name : String }
firefly = TVShow "Joss Whedon" 14 "Firefly"
fringe = TVShow "J. J. Abrams" 100 "Fringe"
firefly.episodes -- 14
```

Note: type alias uses `:` and not `=`

### Special functions

```elm
me = { name = "Jason Wang", age = 27 }
.name me
.age me
```

### Modifying records

Returns a new object with the field updated.

```elm
incrementEpisode tvShow = { tvShow | episodes = tvShow.episodes + 1 }
firefly.episodes -- 14
incrementEpisode firefly
-- { creator = "Joss Whedon", episodes = 15, name = "Firefly" }
firefly.episodes -- 14 still
```

Modifying a record is wrapped in curly brackets.

```elm
{ recordName | fieldName = modificationExpression }

{ fringe | creator = "Alex Kurtzman", episodes = fringe.episodes + 1 }
```