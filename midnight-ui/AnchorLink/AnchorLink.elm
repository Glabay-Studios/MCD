module AnchorLink exposing (..)

{- Author: TuringProblem @01:04 20260722-}
import Html exposing (..)
import Html.Attributes exposing (..)

type ID = 
  | h1
  | h2
  | h3


type alias AnchorLink =
    { label : String
    , link : ID
    }

-- TODO: Clean this garbage up, it's not really working right now... lol
getID : ID -> String ->  Html msg
getID id content  =
  case id of
    h1 ->
      h1 [id "h1"] [text content]
    h2 ->
      h2 [id "h2"] [text content]
    h3 ->
      h3 [id "h3"] [text content]


view : AnchorLink -> Html msg
view anchorLink =
  getID anchorLink.link anchorLink.label
