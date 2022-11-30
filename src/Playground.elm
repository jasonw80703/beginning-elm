module Playground exposing (main)

import Html

escapeEarth : Float -> Float -> String -> String
escapeEarth myVelocity mySpeed fuelStatus =
    let
        escapeVelocityInKmPerSec =
            11.186
        orbitalSpeedInKmPerSec =
            7.67
        whereToLand fuel =
            if fuel == "low" then
                "Land on droneship"
            else
                "Land on launchpad"
    in
    if myVelocity > escapeVelocityInKmPerSec then
        "Godspeed"
    else if mySpeed == orbitalSpeedInKmPerSec then
        "Stay in orbit"
    else
        whereToLand fuelStatus

computeSpeed : Float -> Float -> Float
computeSpeed distance time =
    distance / time

computeTime : number -> number -> number
computeTime startTime endTime =
    endTime - startTime

add a b =
    a + b

multiply c d =
    c * d

divide e f =
    e / f

weekday dayInNumber =
    if dayInNumber == 0 then
        "Sunday"
    else if dayInNumber == 1 then
        "Monday"
    else if dayInNumber == 2 then
        "Tuesday"
    else if dayInNumber == 3 then
        "Wednesday"
    else if dayInNumber == 4 then
        "Thursday"
    else if dayInNumber == 5 then
        "Friday"
    else if dayInNumber == 6 then
        "Saturday"
    else
        "Invalid"

multiplyByFive number =
    let
        multiplier =
            5
    in
    number * multiplier

-- execution of all Elm apps start with main
main : Html.Html msg -- Html.text takes a string and displays it on a browser
-- main = -- Html.text (escapeEarth 11 (computeSpeed 7.67 (computeTime 2 3 )))
--     computeTime 2 3
--       |> computeSpeed 7.67
--       |> escapeEarth 11
--       |> Html.text

-- main =
--     escapeEarth 10 6.7 "low"
--       |> Html.text

main =
    Html.text <| weekday 5

-- Following three are equivalent
-- main =
--     Html.text (String.fromFloat (add 5 (multiply 10 (divide 30 10))))
-- main =
--     divide 30 10
--       |> multiply 10
--       |> add 5
--       |> String.fromFloat
--       |> Html.text

-- main =
--     Html.text
--       <| String.fromFloat
--       <| add 5
--       <| multiply 10
--       <| divide 30 10