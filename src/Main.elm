module Main exposing (main)

import Browser
import Components.Accordion.V1 exposing (AccordionType, viewAccordion)
import Components.Cards.Base.V1 exposing (baseCard)
import Components.Cards.Photo.V1 exposing (PhotoCardType, photoCard)
import Components.Navbar.V1 as Navbar exposing (displayNavbar)

import LucideIcons
import Html exposing (Html, div, h1, p, text, span)
import Html.Attributes exposing (class, style, attribute)



{- | @author: TuringProblem: 20260714 : 1847 -}

type Page = Home
type Theme = Light | Dark 

type alias Model =
  {
    page : Page
    , theme : Theme
    , navbar : Navbar.Model
  }

summaryList : List AccordionType
summaryList =
    [ { title = "Join the discord!"
      , isATag = True
      , location = Just "https://discord.gg/HCrMST97r"
      , content = Just "Midnight Coder Discord"
      , baseCardType = "accordion accordionMidnight"
      }
    , { title = "food"
      , isATag = False
      , location = Nothing
      , content = Just "This is something I like"
      , baseCardType = "accordion accordionLight"
      }
    ]


type Msg
    = NoOp
    | ToggleTheme
    | NavbarMsg Navbar.Msg


main : Program () Model Msg
main =
    Browser.element
        { init = \_ -> (  { page = Home, theme = Light, navbar = Navbar.init }, Cmd.none )
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ToggleTheme ->
            let
                newTheme =
                    case model.theme of
                        Light -> Dark
                        Dark -> Light
            in
            ( { model | theme = newTheme }, Cmd.none )
        NavbarMsg navbarMsg ->
            ( { model | navbar = Navbar.update navbarMsg model.navbar }, Cmd.none )
        NoOp ->
            ( model, Cmd.none )


-- Here is the thing, we need to make sure that details is included within the map as well


view : Model -> Html Msg
view model =
  let themeAttr = case model.theme of
        Light -> [ attribute "data-theme" "light"]
        Dark -> []

  in 
  div [ class "homePage" ] [
        Html.map NavbarMsg (displayNavbar model.navbar)
      , div []
          [ 
            h1 [] [ text "MidnightCoder Docs" ]
          , span [style "font-size" "14px"] [LucideIcons.xIcon[]]
          , div[class "topHomePage"][ 
              -- viewAccordion summaryList ,
              baseCard (Just "card") [ text "helloo" ]
           ]
          ]
      ]

