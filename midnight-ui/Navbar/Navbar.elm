module Navbar exposing (NavItem, Config, navbar)


import Html exposing (Html, a, button, li, nav, span, text, ul)
import Html.Attributes exposing (class, href)
import Html.Events exposing (onClick, preventDefaultOn)
import Json.Decode as Decode


{-| Author: TuringProblem @14:20 20260718 |-}
type alias NavItem =
    { icon : Html Never
    , label : String
    , href : String
    }


type alias Config msg =
    { isOpen : Bool
    , onToggle : msg
    , onNavigate : String -> msg
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
        , ul [ class "mc-navbar__items" ] (List.map (viewItem config.onNavigate) config.items)
        ]


{-| Internal links (href starting with "#") fire onNavigate and don't
navigate the browser. Anything else is a plain external link. The navbar
stays generic: it hands back the clicked href string, nothing app-specific.
-}
viewItem : (String -> msg) -> NavItem -> Html msg
viewItem onNavigate item =
    let
        linkAttrs =
            if String.startsWith "#" item.href then
                [ class "mc-navbar__link"
                , href item.href
                , preventDefaultOn "click" (Decode.succeed ( onNavigate item.href, True ))
                ]

            else
                [ class "mc-navbar__link", href item.href ]
    in
    li []
        [ a linkAttrs
            [ span [ class "mc-navbar__icon" ] [ Html.map never item.icon ]
            , span [ class "mc-navbar__label" ] [ text item.label ]
            ]
        ]
