module Accordion exposing (Item, Variant(..), accordion)


{- Author: TuringProblem @14:42 20260718 -}

{-| Midnight UI — Accordion

A row of collapsible `<details>` panels. Each item is self-describing:
a title, a variant, and arbitrary body content.

    import Accordion
    import Html exposing (a, text)
    import Html.Attributes exposing (href)

    Accordion.accordion
        [ { title = "Join the discord!"
          , content = a [ href "https://discord.gg/..." ] [ text "Midnight Coder" ]
          , variant = Accordion.Midnight
          }
        , { title = "Food"
          , content = text "Something I like"
          , variant = Accordion.Light
          }
        ]

`content` is `Html Never` — put a link, plain text, whatever, as long as it
has no event handlers. This replaces the old `isATag` / `Maybe location`
booleans: the caller just builds the content they want.

@docs Item, Variant, accordion

-}

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
