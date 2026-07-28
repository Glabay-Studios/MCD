module Main exposing (main)

import Browser
import Browser.Dom as Dom
import Task
import Content
import Html exposing (Html, a, div, text,  footer, span)
import Html.Attributes exposing (class, href, id)
import Navbar
import Pages.Devlog.DevlogPage as DevlogPage
import Pages.Home.HomePage as HomePage


{-| @author: TuringProblem: 20260714 : 1847 |-}


type Page
    = Home
    | Devlog


type Theme = Light | Dark


type alias Model =
    { page : Page
    , theme : Theme
    , navOpen : Bool
    }


type Msg
    = NoOp
    | ToggleTheme
    | ToggleNav
    | NavigateTo String


main : Program () Model Msg
main =
    Browser.element
        { init = \_ -> ( { page = Home, theme = Light, navOpen = False }, Cmd.none )
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
                        Light ->
                            Dark

                        Dark ->
                            Light
            in
            ( { model | theme = newTheme }, Cmd.none )

        ToggleNav ->
            ( { model | navOpen = not model.navOpen }, Cmd.none )

        NavigateTo href ->
          ( { model | page = pageFromHref href model.page }
          , Task.attempt (\_ -> NoOp) (Dom.setViewportOf "pageContainer" 0 0)
          )

        NoOp ->
            ( model, Cmd.none )


pageFromHref : String -> Page -> Page
pageFromHref href current =
    case href of
        "#home" ->
            Home

        "#devlog" ->
            Devlog

        _ ->
            current



viewFooter : Html Msg
viewFooter =
    footer [ class "siteFooter" ]
        [ div [ class "siteFooter__brand" ]
            [ span [ class "siteFooter__title" ] [ text "MidnightCoder" ]
            , span [ class "siteFooter__tag" ] [ text "Keep your curiousity open, your skills sharp, and that coffee cup full ☕️ Catch you in the Discord." ]
            ]
        , div [ class "siteFooter__links" ]
            [ a [ class "siteFooter__link", href "https://discord.gg/HCrMST97r" ] [ text "Discord" ]
            , a [ class "siteFooter__link", href "https://www.youtube.com/@Glabay" ] [ text "YouTube" ]
            ]
        ]


viewPage : Model -> Html Msg
viewPage model =
    case model.page of
        Home ->
            HomePage.view

        Devlog ->
            DevlogPage.view



-- TODO: Need to make sure, that when we click the navbar the state of the screen goes to the TOP
view : Model -> Html Msg
view model =
    div [ class "homePage" ]
        [ div [ class "mainRow" ]
            [ Navbar.navbar
                { isOpen = model.navOpen
                , onToggle = ToggleNav
                , onNavigate = NavigateTo
                , items = Content.navItems
                }
            , div [ class "contentArea", id "pageContainer" ]
                [ viewPage model ]
            ]
        , viewFooter
        ]

