module Content.Base exposing (baseComponent)

import Html exposing (..)
import Html.Attributes exposing (..)

{-| author: TuringProblem @14:57 20260719 -}

type alias BaseTypes msg = 
  {
    children: List (Html msg)
  , difficulty: Int
  }

type ClassName = Difficulty
difficultyClass : ClassName -> String
difficultyClass className =
  case className of
    Difficulty -> "difficulty"
  
getDifficulty: BaseTypes msg -> Html msg
getDifficulty baseTypes =
  let 
      difName = "Difficulty: "
  in 
  case baseTypes.difficulty of 
    1 -> div [class (difficultyClass Difficulty)][p[][text difName], span[][text "★☆☆☆☆"]]
    2 -> div [class (difficultyClass Difficulty)][p[][text difName], span[][text "★★☆☆☆"]]
    3 -> div [class (difficultyClass Difficulty)][p[][text difName], span[][text "★★★☆☆"]]
    4 -> div [class (difficultyClass Difficulty)][p[][text difName], span[][text "★★★★☆"]]
    5 -> div [class (difficultyClass Difficulty)][p[][text difName], span[][text "★★★★★"]]
    _ -> div[][]


baseComponent: BaseTypes msg -> Html msg
baseComponent baseTypes  =
  div [class "carousel-base"] (baseTypes.children ++ [getDifficulty baseTypes])
