module Pages.Devlog.Components.Example exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Card


mainView : Html msg
mainView =
  div [class "mainView"][
    ]

view : Html msg
view =
    div [ class "pageContainer" ]
        [ 
          h1 [] [ text "DevLog" ]
          , mainView
        ]
