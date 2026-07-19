module Content.HigherLower.V1 exposing (view)

import Content.Base exposing (baseComponent)
import Html exposing (..)

view : Html msg
view = 
  baseComponent {
    children = [
      div[][ 
        div[][ text "Java CLI Challenge - Higher or Lower" ]
        , div[][text "This is a higher lower"]
        ]
      ]
    , difficulty = 1
  }
