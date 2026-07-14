module Components.Cards.Base.V1 exposing (baseCard)

import Html exposing (..)
import Html.Attributes exposing (..)


baseCard : List (Html msg) -> Html msg
baseCard children =
    div [ class "card" ] children
