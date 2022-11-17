# Elm Language pt 3

## Lists (linked lists)

Data structure for storing multiple values of the same kind.

```elm
[ 1, 2, 3 ]
[ 'a', 'b', 'c' ]


List.member 'a' [ 'a', 'b', 'c' ] -- True
List.isEmpty [] -- True
List.reverse [ 1, 2, 3 ] -- [3, 2, 1]
List.append [ 1, 2 ] [ 3, 4 ] -- [1, 2, 3, 4]
```

List.map

```elm
guardians = [ "Star-lord", "Groot", "Gamora", "Drax", "Rocket" ]
lengths = List.map String.length guardians
List.filter (\x -> x < 6) lengths


List.map (\x -> String.contains "-" x) guardians
-- short firm
List.map (String.contains "-") guardians
```

(\param -> someFunction x param) can be rewritten as (someFunction x) (if param is the last argument)

### Cons operator

```elm
1 :: [ 2, 3 ] -- [1, 2, 3]
```

## Arrays

Lists are easy to traverse, but hard to access at an index.

Create arrays from lists.

```elm
import Array

arr = Array.fromList [ 1, 2, 3, 4 ]
Array.toList arr

Array.initialize 5 (always 0) -- Array.fromList [0,0,0,0,0]
Array.initialize 5 identity -- Array.fromList [0,1,2,3,4]
```

### always fn

A constant function that always returns the first argument. (constant fn is one that always returns the same value regardless of input)

```elm
always a b =
    a
```

### identity fn

A function that always returns the input.

```elm
identity x =
    x
```

### Get and Set

```elm
arr = Array.fromList [ 0, 1, 2, 3, 4 ]
Array.get 3 arr -- 3
Array.get 5 arr -- Nothing

Array.set 3 8 arr -- Array.fromList [0,1,2,8,4]
-- above returns a new array instead of mutating, stuff is immutable in Elm
```

### Iterating

```elm
Array.map (\x -> x * 2) (Array.fromList [ 1, 2, 3, ]) -- Array.fromList [2,4,6]
```

# Lists vs Arrays

Use lists unless you need index access, then use arrays.

Lists and Arrays are both immutable.