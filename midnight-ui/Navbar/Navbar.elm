module Navbar exposing (NavItem, Config, navbar)


import Html exposing (Html, a, button, li, nav, span, text, ul)
import Html.Attributes exposing (class, href)
import Html.Events exposing (onClick)


{-| Author: TuringProblem @14:20 20260718 |-}
type alias NavItem =
    { icon : Html Never
    , label : String
    , href : String
    }


type alias Config msg =
    { isOpen : Bool
    , onToggle : msg
    , items : List NavItem
    }


navbar : Config msg -> Html msg
navbar config =
    let
        stateClass =
            if config.isOpen then
                "mc-navbar mc-navbar--open"

            else
                "mc-navbar mc-navbar--closed"

        chevron =
            if config.isOpen then
                "‹"

            else
                "›"
    in
    nav [ class stateClass ]
        [ button [ class "mc-navbar__toggle", onClick config.onToggle ]
            [ text chevron ]
        , ul [ class "mc-navbar__items" ] (List.map viewItem config.items)
        ]


viewItem : NavItem -> Html msg
viewItem item =
    li []
        [ a [ class "mc-navbar__link", href item.href ]
            [ span [ class "mc-navbar__icon" ] [ Html.map never item.icon ]
            , span [ class "mc-navbar__label" ] [ text item.label ]
            ]
        ]
