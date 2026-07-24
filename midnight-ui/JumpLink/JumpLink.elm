module JumpLink exposing (..)

{- Author: TuringProblem @01:04 20260722-}
import Html exposing (..)
import Html.Attributes exposing (..)

type HTMLHeaderType =  
  | h1
  | h2
  | h3
  | h4
  | h5
  | h6


-- things that we need... as: HTMLHeaderType, className: String, children: List (Html msg), id: Maybe String, dataIndex: Maybe String
type alias JumpLink =
    {as : HTMLHeaderType
    , className : String
    , children : List (Html msg)
    , id : Maybe String
    , dataIndex : Maybe String
    }

-- depthDiv: represents the 
depthDiv : HTMLHeaderType -> List (Html msg) ->  Html msg
depthDiv id children =
  case id of
    h1 ->
      div [class "__depth_1"] [children]
    h2 ->
      div [class "__depth_2"] [children]
    h3 ->
      div [class "__depth_3"] [children]
    h4 ->
      div [class "__depth_4"] [children]
    h5 ->
      div [class "__depth_5"] [children]
    h6 ->
      div [class "__depth_6"] [children]


view : JumpLink -> Html msg
view jumpLinkView =
  div[class ""][
    depthDiv anchorLink.as [ text "Hello, world"]
    ]
