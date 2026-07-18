module Components.Navbar.V1 exposing (Model, Msg, displayNavbar, init, update)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import LucideIcons

type alias Model =
  {isOpen : Bool}

init : Model
init =
  {isOpen = False}

type Msg = Toggle

update : Msg -> Model -> Model
update msg model =
  case msg of
    Toggle ->
      {model | isOpen = not model.isOpen}


displayNavbar : Model -> Html Msg
displayNavbar model = 
  if model.isOpen then
    div[class "navbar navbarOpen"][
      button [ onClick Toggle ] [ LucideIcons.chevronLeftIcon[] ]
    ]
  else

  div[class "navbar navbarClosed"][
    button [ onClick Toggle ] [ LucideIcons.chevronRightIcon[] ]
  ]

