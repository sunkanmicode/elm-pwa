module Main exposing (main)

import Browser
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Debug


-- MODEL

type alias Model =
    { message : String }


init : Model
init =
    Debug.log "Initial model" { message = "Hello, Elm is running!" }


-- UPDATE

type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    Debug.log "Update called with model" model
    |> (\_ -> model)


-- VIEW

view : Model -> Html Msg
view model =
    div [ style "background-color" "#f0f0f0", style "padding" "20px", style "color" "#000" ]
        [ text model.message ]


-- MAIN

main =
    Browser.sandbox { init = init, update = update, view = view }
