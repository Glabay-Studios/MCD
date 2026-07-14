module Components.Accordion.V1 exposing (AccordionType, viewAccordion)

import Html exposing (..)
import Html.Attributes exposing (..)



{- | @author: TuringProblem: 20260714 -}


type alias AccordionType =
    { title : String
    , isATag : Bool
    , location : Maybe String
    , content : Maybe String
    }


getContent : Maybe String -> String
getContent maybeContent =
    case maybeContent of
        Just content ->
            content

        Nothing ->
            ""



-- class "detailsBox"
-- class "summaryBox"


accordionLogic : AccordionType -> Html msg
accordionLogic l =
    details []
        [ summary [] [ text l.title ]
        , div []
            [ if l.isATag then
                a [ href (getContent l.location) ] [ text (getContent l.content) ]

              else
                text (getContent l.content)
            ]
        ]


viewAccordion : List AccordionType -> Html msg
viewAccordion items =
    div [ class "accordion" ] (List.map accordionLogic items)
