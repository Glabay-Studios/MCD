module Components.Accordion.V1 exposing (AccordionType, viewAccordion)

import Html exposing (..)
import Html.Attributes exposing (..)



{- | @author: TuringProblem: 20260714 -}


type alias AccordionType =
    { title : String
    , isATag : Maybe Bool
    , location : Maybe String
    }


showAccordion : AccordionType -> Html msg
showAccordion l =
    case l.isATag of
        Just True ->
            case l.location of
                Just location ->
                    a [ href location ] [ text l.title ]

                Nothing ->
                    text l.title

        Just False ->
            text l.title

        Nothing ->
            text l.title


viewAccordion : List AccordionType -> Html msg
viewAccordion items =
    div [ class "accordion" ] (List.map showAccordion items)
