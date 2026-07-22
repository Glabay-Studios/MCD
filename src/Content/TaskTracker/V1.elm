module Content.TaskTracker.V1 exposing (view)

import Content.Base exposing (baseComponent)
import Html exposing (..)
import Html.Attributes exposing (..)

view : Html msg
view = 
  baseComponent {
    children = [
      div[][ 
        div[][ text "Task Tracker (Java Swing)" ]
        , div[][text "This is a Java Swing Task Tracker"]
        ]
      ]
    , difficulty = 2
  }
