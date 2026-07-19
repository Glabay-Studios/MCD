module Content.HigherLower.V1 exposing (view)

import Content.Base exposing (baseComponent)
import Html exposing (..)

view : Html msg
view = 
  baseComponent [
    h1 [] [text "HigherLower"]
    ]
