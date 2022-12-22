# Elm Architecture (the important stuff)

## Model View Update

Models represent state in the app. Models are defined with `type alias`.

```elm
type alias Model = Int
```

Views represent the UI.

```elm
view : Model -> Html Msg
```

Update represents user actions and how the model is updated.

```elm
type Msg
  = ClickOnA
  | ClickOnB
  | ToggleC

update : Msg -> Model -> Model
```
