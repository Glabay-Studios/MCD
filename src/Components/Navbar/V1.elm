module Components.Navbar.V1 exposing (Model, Msg, displayNavbar, init, update)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import LucideIcons

type alias Model =
  {isOpen : Bool}

type alias NavItem =
  { icon : Html Never, label : String, href : String }

items : List NavItem
items = 
  [ { icon = LucideIcons.homeIcon [], label = "Home", href = "#" }
  , { icon = LucideIcons.fileTextIcon [], label = "Docs", href = "#" }
  ]
init : Model
init =
  {isOpen = False}

type Msg = Toggle

update : Msg -> Model -> Model
update msg model =
  case msg of
    Toggle ->
      {model | isOpen = not model.isOpen}


viewItem : NavItem -> Html Msg
viewItem item =
  li[] [
    a [href item.href] [
      span [class "navIcon"] [ Html.map never item.icon ]
      , span [class "navLabel"] [ text item.label ]
      ]
    ]

displayNavbar : Model -> Html Msg
displayNavbar model = 
  let 
      stateClass =
        if model.isOpen then "navbar navbarOpen" else "navbar navbarClosed"
  in
  nav [ class stateClass ]
    [ button [ onClick Toggle ]
        [ if model.isOpen then LucideIcons.chevronLeftIcon [] else LucideIcons.chevronRightIcon [] ]
    , ul [ class "navItems" ] (List.map viewItem items)
    ]

