module Main exposing (main)

import Browser
import Components.Accordion.V1 exposing (AccordionType, viewAccordion)
import Html exposing (Html, a, details, div, h1, p, summary, text)
import Html.Attributes exposing (class, href)


summaryList : List AccordionType
summaryList =
    [ { title = "Join the discord!"
      , isATag = True
      , location = Just "https://discord.gg/9w9x7d3"
      , content = Nothing
      }
    , { title = "food"
      , isATag = False
      , location = Nothing
      , content = Just "I am a content"
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



-- Here is the thing, we need to make sure that details is included within the map as well


view : Model -> Html Msg
view model =
    div [ class "page" ]
        [ h1 [] [ text "MidnightCoder Docs" ]
        , p [] [ text "" ]
        , viewAccordion summaryList
        ]
