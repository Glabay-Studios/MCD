module Content.BankSimulator.V1 exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Content.Base exposing (baseComponent)

{-| author: TuringProblem @14:57 20260719 -}

view : Html msg
view =
  baseComponent {
    children = [
      div[][ 
        div[][ text "Java Bank Simulator" ]
        , div[][text "This is a bank simulator"]
        ]
      ]
    , difficulty = 4
  }
