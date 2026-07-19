module Content.RockPaper.V1 exposing (view)

import Content.Base exposing (baseComponent)
import Html exposing (..)
import Html.Attributes exposing (..)

view : Html msg
view = 
  baseComponent {
    children = [
      div[][ 
        div[][ text "WebApp - Rock, Paper, Scissors" ]
        , div[][text "This is a rock paper"]
        ]
      ]
    , difficulty = 3
  }
