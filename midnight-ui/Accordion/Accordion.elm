module Accordion exposing (Item, Variant(..), accordion)


{- Author: TuringProblem @14:42 20260718 -}

import Html exposing (Html, details, div, summary, text)
import Html.Attributes exposing (class)


type Variant = Light | Midnight


type alias Item =
    { title : String
    , content : Html Never
    , variant : Variant
    }


variantClass : Variant -> String
variantClass variant =
    case variant of
        Light ->
            "mc-accordion mc-accordion--light"

        Midnight ->
            "mc-accordion mc-accordion--midnight"


accordion : List Item -> Html msg
accordion items =
    div [ class "mc-accordion-group" ] (List.map viewItem items)


viewItem : Item -> Html msg
viewItem item =
    div [ class (variantClass item.variant) ]
        [ details []
            [ summary [] [ text item.title ]
            , div [ class "mc-accordion__body" ] [ Html.map never item.content ]
            ]
        ]
