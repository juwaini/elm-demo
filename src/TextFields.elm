import Browser
import Html exposing (Html, Attribute, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)

-- MAIN

main =
    Browser.sandbox { init = init, update = update, view = view }

-- MODEL

type alias Model =
    {
        content : String,
        length : Int
    }

init : Model
init =
    { content = "", length = 0 }

-- UPDATE

type Msg
    = Change String

update : Msg -> Model -> Model
update msg model =
    case msg of
        Change newContent ->
            { model | content = newContent, length = String.length newContent }

-- VIEW

view : Model -> Html Msg
view model =
    div []
    [
        input [ placeholder "Test to reverse", value model.content, onInput Change ] [],
        div [] [ text (String.reverse model.content) ],
        div [] [ text (String.fromInt model.length) ]
    ]