# Elm Language pt 2

```elm
module Playground exposing (main)

import Html


escapeEarth myVelocity mySpeed =
    if myVelocity > 11.186 then
        "Godspeed"

    else if mySpeed == 7.67 then
        "Stay in orbit"

    else
        "Come back"


main =
    Html.text <| escapeEarth 11.2 7.2
```

* Elm files must begin with a module definition.
* Import lines come after the module definition.
* 2 separate lines separate definitions, except for module/import.
* Function body indentation is 4 spaces or a tab.
* If expressions must be placed inside a function definition.

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

* `let` area must be indented with at least one space.
* `in` area doesn't need any indentation

## Strings

Strings use double quotes, characters use single quotes.

```elm
str = "name"
char = 'a'

String.length str
String.isEmpty str
"first " ++ str
String.append 'a' 'b'
String.concat [ 'a ', 'b ', 'c ' ]
String.join " " [ 'a', 'b', 'c' ]
String.reverse str
```

#### Exposing only certain functions from a module.

```elm
-- imports all
import String

-- import only length
import String exposing (length)

length 'hello' -- 5
```

#### Filtering

```elm
> isValid char = char /= '-'
<function>

> String.filter isValid "222-11-5555"
"222115555"
```

#### Anonymous Functions

```elm
> String.filter (\char -> char /= '-') "222-11-5555"
"222115555"
```

Anonymous functions begin with a blackslash, then parameters, -> and then the function body.

\param1 param2 param3 -> body