module Counter exposing (Model)

import Browser
import Html exposing (Html)
import Html.Events exposing (..)

type alias Model =
    Int

initialModel : Model
initialModel =
    0


view : Model -> Html Msg
view model =
    Html.div []
        [ Html.button [ onClick Decrement ] [ Html.text "-" ]
        , Html.text (String.fromInt model)
        , Html.button [ onClick Increment ] [ Html.text "+" ]
        ]


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


-- main entry point to the app
main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }
