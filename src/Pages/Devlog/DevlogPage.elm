module Pages.Devlog.DevlogPage exposing (view)


import Html exposing (Html, div, h1, p, text)
import Html.Attributes exposing (class)
import Pages.Devlog.Components.Example as E


view : Html msg
view =
    div [ class "pageContainer" ] [E.view]
