module Carousel exposing (Item, Style(..), Variant(..), carousel)

{- Author: MidnightCoder UI — carousel of clickable image cards. -}

import Html exposing (Html, a, div, img, text)
import Html.Attributes exposing (alt, class, href, src, style)


type Variant
    = InfiniteScroll
    | Pagination


type Style
    = Video
    | Rating


type alias Item =
    { link : String
    , thumbnail : String
    , subText : Maybe String
    , style : Style
    }


{-| Smallest number of cards one loop copy must hold so it always overflows the
viewport — otherwise a short list leaves a blank gap before the loop resets.
At ~236px/card this covers ultrawide (~3440px) monitors.
-}
minCopyCards : Int
minCopyCards =
    16


{-| InfiniteScroll builds one "copy" by repeating the list until it's wide
enough to overflow the viewport, then renders that copy twice and animates the
track -50% in CSS — the second copy slides in exactly where the first began, a
seamless loop with no gap, for any list size. Duration scales with card count so
the scroll speed stays constant. Pagination is a plain scrollable row. Hovering
pauses the loop so the cards stay clickable.
-}
carousel : Variant -> List Item -> Html msg
carousel variant items =
    case variant of
        Pagination ->
            div [ class "mc-carousel mc-carousel--pagination" ]
                [ div [ class "mc-carousel__track" ] (List.map viewItem items) ]

        InfiniteScroll ->
            let
                copy =
                    repeatToFill minCopyCards items

                duration =
                    String.fromInt (List.length copy * 3) ++ "s"
            in
            div [ class "mc-carousel mc-carousel--infinite" ]
                [ div
                    [ class "mc-carousel__track"
                    , style "animation-duration" duration
                    ]
                    (List.map viewItem (copy ++ copy))
                ]


{-| Repeat `xs` (whole-list at a time) until it holds at least `minLen` items.
Empty in, empty out.
-}
repeatToFill : Int -> List a -> List a
repeatToFill minLen xs =
    case xs of
        [] ->
            []

        _ ->
            let
                reps =
                    max 1 (ceiling (toFloat minLen / toFloat (List.length xs)))
            in
            List.concat (List.repeat reps xs)


styleClass : Style -> String
styleClass style =
    case style of
        Video ->
            "mc-carousel__card--video"

        Rating ->
            "mc-carousel__card--rating"


viewItem : Item -> Html msg
viewItem item =
    a [ class ("mc-carousel__card " ++ styleClass item.style), href item.link ]
        [ img
            [ class "mc-carousel__img"
            , src item.thumbnail
            , alt (Maybe.withDefault "" item.subText)
            ]
            []
        , viewSubText item.subText
        ]


viewSubText : Maybe String -> Html msg
viewSubText subText =
    case subText of
        Just t ->
            div [ class "mc-carousel__caption" ] [ text t ]

        Nothing ->
            text ""
