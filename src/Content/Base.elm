module Content.Base exposing (baseComponent)

import Html exposing (..)
import Html.Attributes exposing (..)

{-| author: TuringProblem @14:57 20260719 -}

type alias BaseTypes msg = 
  {
    children: List (Html msg)
  , difficulty: Int
  }

  
getDifficulty: BaseTypes msg -> Html msg
getDifficulty baseTypes =
  case baseTypes.difficulty of 
    1 -> div [][text "★"]
    2 -> div [][text "★★"]
    3 -> div [][text "★★★"]
    4 -> div [][text "★★★★"]
    5 -> div [][text "★★★★★"]
    _ -> div[][]


baseComponent: BaseTypes msg -> Html msg
baseComponent baseTypes  =
  div [class "carousel-base"] (baseTypes.children ++ [getDifficulty baseTypes])
