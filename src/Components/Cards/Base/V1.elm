module Components.Cards.Base.V1 exposing (baseCard)

import Html exposing (..)
import Html.Attributes exposing (..)



-- TO = Type Of


getTO : Maybe String -> String
getTO maybeType =
    case maybeType of
        Just typeOf ->
            typeOf

        Nothing ->
            ""


baseCard : Maybe String -> List (Html msg) -> Html msg
baseCard t children =
    div [ class (getTO t) ] children
