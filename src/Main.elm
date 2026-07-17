module Main exposing (main)

import Browser
import Components.Accordion.V1 exposing (AccordionType, viewAccordion)
import Components.Cards.Base.V1 exposing (baseCard)
import Components.Cards.Photo.V1 exposing (PhotoCardType, photoCard)
import Html exposing (Html, div, h1, p, text)
import Html.Attributes exposing (class)



{- | @author: TuringProblem: 20260714 : 1847 -}


summaryList : List AccordionType
summaryList =
    [ { title = "Join the discord!"
      , isATag = True
      , location = Just "https://discord.gg/HCrMST97r"
      , content = Just "Midnight Coder Discord"
      , baseCardType = "accordion-midnight"
      }
    , { title = "food"
      , isATag = False
      , location = Nothing
      , content = Just "This is something I like"
      , baseCardType = "accordion"
      }
    , { title = "Mike"
      , isATag = False
      , location = Nothing
      , content = Just "This is the midnight coder"
      , baseCardType = "accordion"
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
    div [ class "homePage" ]
        [ h1 [] [ text "MidnightCoder Docs" ]
        , div []
            [ viewAccordion summaryList
            , baseCard (Just "card") [ text "helloo" ]
            ]
        ]
