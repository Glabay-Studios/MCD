module Card exposing (Variant(..), card)

{-| Author: TuringProblem @14:45 20260718 |-}
{-| Midnight UI — Card

A plain surface container. Pick a visual variant, pass any children.

    import Card

    Card.card Card.Midnight [ text "hello" ]

Copy `Card/Card.elm` + `Card/card.css` into your project, and make sure
`tokens.css` is linked. That's the whole component.

@docs Variant, card

-}

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
