module Demo exposing (main)

{-| A tiny app that exercises every Midnight UI component. It doubles as
living usage documentation and as a compile check for the library.

    cd midnight-ui
    elm make examples/Demo.elm --output=demo.js

Then open examples/demo.html.

-}

import Accordion
import Browser
import Card
import Html exposing (Html, a, div, h1, text)
import Html.Attributes exposing (href)
import Navbar


type alias Model =
    { navOpen : Bool }


type Msg
    = ToggleNav


init : Model
init =
    { navOpen = False }


update : Msg -> Model -> Model
update msg model =
    case msg of
        ToggleNav ->
            { model | navOpen = not model.navOpen }


navItems : List Navbar.NavItem
navItems =
    [ { icon = text "H", label = "Home", href = "#" }
    , { icon = text "D", label = "Docs", href = "#" }
    ]


view : Model -> Html Msg
view model =
    div []
        [ Navbar.navbar
            { isOpen = model.navOpen
            , onToggle = ToggleNav
            , items = navItems
            }
        , div []
            [ h1 [] [ text "Midnight UI" ]
            , Card.card Card.Midnight [ text "A midnight card" ]
            , Card.card Card.Light [ text "A light card" ]
            , Accordion.accordion
                [ { title = "Join the discord!"
                  , content = a [ href "#" ] [ text "Midnight Coder" ]
                  , variant = Accordion.Midnight
                  }
                , { title = "Food"
                  , content = text "Something I like"
                  , variant = Accordion.Light
                  }
                ]
            ]
        ]


main : Program () Model Msg
main =
    Browser.element
        { init = \_ -> ( init, Cmd.none )
        , update = \msg model -> ( update msg model, Cmd.none )
        , view = view
        , subscriptions = \_ -> Sub.none
        }
