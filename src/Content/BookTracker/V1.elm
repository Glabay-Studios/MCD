module Content.BookTracker.V1 exposing (view)

import Content.Base exposing (baseComponent)
import Html exposing (..)
import Html.Attributes exposing (..)

view : Html msg
view = 
  baseComponent [
    h1 [] [text "BookTracker"]
    ]
