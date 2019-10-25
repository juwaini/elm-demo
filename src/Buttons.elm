import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

-- MAIN

main = Browser.sandbox { init = init, update = update, view = view }


-- MODEL

type alias Model = Int
init : Model
init = 0

-- UPDATE

type Msg = Increment | Decrement | Reset | Increment10

update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment -> model + 1
        Decrement -> model - 1
        Reset -> 0
        Increment10 -> model + 10


-- VIEW

view : Model -> Html Msg
view model =
    div []
    [
        button [ onClick Decrement ] [text "Decrease"],
        div [] [ text (String.fromInt model) ],
        button [ onClick Increment ] [ text "Increase" ],
        button [ onClick Reset ] [ text "Reset" ],
        button [ onClick Increment10 ] [ text "Increment 10" ]
    ]