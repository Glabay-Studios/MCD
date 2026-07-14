module Main exposing (main)

import Browser
import Components.Accordion.V1 exposing (AccordionType, viewAccordion)
import Html exposing (Html, a, details, div, h1, p, summary, text)
import Html.Attributes exposing (class, href)


summaryList : List AccordionType
summaryList =
    [ { title = "Join the discord!"
      , isATag = Just True
      , location = Just "https://discord.gg/9w9x7d3"
      }
    ]


type alias Model =
    {}


type Msg
    = NoOp


main : Program () Model Msg
main =
    Browser.element
        { init = \_ -> ( {}, Cmd.none )
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div [ class "page" ]
        [ h1 [] [ text "MidnightCoder Docs" ]
        , p [] [ text "" ]
        , details [ class "detailsBox" ]
            [ summary [ class "summaryBox" ] [ text "Discord" ]
            , viewAccordion summaryList
            ]
        ]
