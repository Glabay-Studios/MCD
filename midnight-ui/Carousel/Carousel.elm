module Carousel exposing (Direction(..), Item, Style(..), Variant(..), carousel)

{- Author: MidnightCoder UI — carousel of clickable image cards. -}

import Html exposing (Html, a, div, img, text)
import Html.Attributes exposing (alt, class, href, src, style)


type Variant
    = InfiniteScroll
    | Pagination


type Style
    = Video
    | Rating

type Direction
    = Left
    | Right


type alias Item =
    { link : String
    , thumbnail : String
    , subText : Maybe String
    , style : Style
    }


minCopyCards : Int
minCopyCards =
    16


carousel : Variant -> Direction -> List Item -> Html msg
carousel variant direction items =
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
            div [ class ("mc-carousel mc-carousel--infinite " ++ directionClass direction) ]
                [ div
                    [ class "mc-carousel__track"
                    , style "animation-duration" duration
                    ]
                    (List.map viewItem (copy ++ copy))
                ]


directionClass : Direction -> String
directionClass direction =
    case direction of
        Left ->
            "mc-carousel--left"

        Right ->
            "mc-carousel--right"

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


viewSubText : Maybe String -> Html msg
viewSubText subText =
    case subText of
        Just t ->
            div [ class "mc-carousel__caption" ] [ text t ]

        Nothing ->
            text ""


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


