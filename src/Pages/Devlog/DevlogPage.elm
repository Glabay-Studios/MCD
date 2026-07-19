module Pages.Devlog.DevlogPage exposing (view)


import Html exposing (Html, div, h1, p, text)
import Html.Attributes exposing (class)


view : Html msg
view =
    div [ class "pageContainer" ]
        [ h1 [] [ text "DevLog" ]
        , p [] [ text "Dev updates go here." ]
        ]
