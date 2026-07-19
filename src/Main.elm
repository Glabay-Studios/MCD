module Main exposing (main)

import Accordion
import Browser
import Card
import Carousel
import Content
import Html exposing (Html, div, h1, text, h3, footer)
import Html.Attributes exposing (class)
import Navbar


{-| @author: TuringProblem: 20260714 : 1847 |-}


type Page = Home


type Theme = Light | Dark


type alias Model =
    { page : Page
    , theme : Theme
    , navOpen : Bool
    }


type Msg
    = NoOp
    | ToggleTheme
    | ToggleNav


main : Program () Model Msg
main =
    Browser.element
        { init = \_ -> ( { page = Home, theme = Light, navOpen = False }, Cmd.none )
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ToggleTheme ->
            let
                newTheme =
                    case model.theme of
                        Light ->
                            Dark

                        Dark ->
                            Light
            in
            ( { model | theme = newTheme }, Cmd.none )

        ToggleNav ->
            ( { model | navOpen = not model.navOpen }, Cmd.none )

        NoOp ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div [ class "homePage" ]
        [ Navbar.navbar
            { isOpen = model.navOpen
            , onToggle = ToggleNav
            , items = Content.navItems
            }
        , div [class "pageContainer"]
            [ h1 [] [ text "MidnightCoder Docs" ]
            , div [ class "topHomePage" ]
                [ Card.card Card.Light [] [ text "Welcome to the Midnight Coder Docs!" ]
                , Accordion.accordion Content.summaryItems
                ,div[][ 
                  div[class "line"][]
                  , h3[][text "recent videos"]
                ]
                , Carousel.carousel Carousel.InfiniteScroll Carousel.Left Content.carouselItems
                , div[class "line"][]
                , Carousel.carousel Carousel.InfiniteScroll Carousel.Right Content.courseCarousel
                ]
            ]
        , footer[][text "footer"]
        ]

