module Content.BookTracker.V1 exposing (view)

import Content.Base exposing (baseComponent)
import Html exposing (..)
import Html.Attributes exposing (..)

view : Html msg
view = 

  baseComponent {
    children = [
      div[][ 
        div[][ text "Spring Boot 4 Book Tracker Challenge" ]
        , div[][text "This is a book tracker"]
        ]
      ]
    , difficulty = 3
  }
