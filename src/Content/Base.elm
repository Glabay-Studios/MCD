module Content.Base exposing (baseComponent)

import Html exposing (..)
import Html.Attributes exposing (..)
import Icons as Icon

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

generateMugStars: Int -> Html msg
generateMugStars stars =
  let
    starsList = List.range 1 5 
    starList = List.map (\x -> Icon.coffeeCupIcon []) starsList
  in
    span [class "highlight"] starList
  
getDifficulty: BaseTypes msg -> Html msg
getDifficulty baseTypes =
  let 
      difName = "Difficulty: "
  in 
  case baseTypes.difficulty of 
    1 -> div [class (difficultyClass Difficulty)][p[][text difName], generateMugStars baseTypes.difficulty]
    2 -> div [class (difficultyClass Difficulty)][p[][text difName], generateMugStars baseTypes.difficulty]
    3 -> div [class (difficultyClass Difficulty)][p[][text difName], generateMugStars baseTypes.difficulty]
    4 -> div [class (difficultyClass Difficulty)][p[][text difName], generateMugStars baseTypes.difficulty]
    5 -> div [class (difficultyClass Difficulty)][p[][text difName], generateMugStars baseTypes.difficulty]
    _ -> div[][]


baseComponent: BaseTypes msg -> Html msg
baseComponent baseTypes  =
  div [class "carousel-base"] (baseTypes.children ++ [getDifficulty baseTypes])
