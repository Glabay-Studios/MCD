module Card exposing (Variant(..), card)

{- Author: TuringProblem @14:45 20260718 -}

import Html exposing (Html, div)
import Html.Attributes exposing (class)


type Variant
    = Light
    | Midnight


variantClass : Variant -> String
variantClass variant =
    case variant of
        Light ->
            "mc-card mc-card--light"

        Midnight ->
            "mc-card mc-card--midnight"

card : Variant -> List (Html msg) -> Html msg
card variant children =
    div [ class (variantClass variant) ] children
