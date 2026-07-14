module Main exposing (main)

import Browser
import Html exposing (Html, a, details, div, h1, p, summary, text)
import Html.Attributes exposing (class, href)


type alias ShowSummary =
    { text : String
    , isATag : Maybe Bool
    , location : Maybe String
    }


summaryList : List ShowSummary
summaryList =
    [ { text = "Join the discord!"
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


showSummary : ShowSummary -> Html Msg
showSummary =
    \l ->
        case l.isATag of
            Just True ->
                case l.location of
                    Just location ->
                        a [ href location ] [ text l.text ]

                    Nothing ->
                        text l.text

            Just False ->
                text l.text

            Nothing ->
                text l.text


viewShowSummary : List ShowSummary -> Html Msg
viewShowSummary items =
    div [] (List.map showSummary items)


view : Model -> Html Msg
view model =
    div [ class "page" ]
        [ h1 [] [ text "MidnightCoder Docs" ]
        , p [] [ text "" ]
        , details []
            [ summary [] [ text "Discord" ]
            , viewShowSummary summaryList
            ]
        ]
