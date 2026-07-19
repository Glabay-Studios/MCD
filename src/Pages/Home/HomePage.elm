
module Pages.Home.HomePage exposing (view)

import Html exposing (Html, div, h1, p, text, h3, footer, span)
import Html.Attributes exposing (class)
import Accordion
import Card
import Carousel
import Content


view : Html msg
view =
  div [ class "pageContainer" ]
        [ h1 [] [ text "MidnightCoder Docs" ]
        , div [ class "topHomePage" ]
            [ Card.card Card.Light [] [ text "Welcome to the Midnight Coder Docs!" ]
            , Accordion.accordion Content.summaryItems
            , div []
                [ div [ class "line" ] []
                , h3 [] [ text "recent videos" ]
                ]
            , Carousel.carousel Carousel.InfiniteScroll Carousel.Left Content.carouselItems
            , div [ class "line" ] []
            , Carousel.carousel Carousel.InfiniteScroll Carousel.Right Content.courseCarousel
            ]
        ]

