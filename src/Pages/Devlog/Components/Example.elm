module Pages.Devlog.Components.Example exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Card

-- Things it's goign to need, a side container

mainView : Html msg
mainView =
  div [class "mainView"][
    div[][text "Hello World"]
    , div[][text "Hello World"]
    ]

view : Html msg
view =
    div []
        [ 
          h1 [] [ text "DevLog" ]
          , mainView
        ]
