module Content.Base exposing (baseComponent)

import Html exposing (..)
import Html.Attributes exposing (..)

{-| author: TuringProblem @14:57 20260719 -}

{-| difficulty is between 1 - 5 -}
type alias Item msg =
  {difficulty: number}

baseComponent: List (Html msg) -> Html msg
baseComponent children  = 
  div [class "carousel-base"] children



