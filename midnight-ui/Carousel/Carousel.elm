
import Html exposing (..)
import Html.Attributes exposing (..)


type Variant = InfiniteScroll | Pagination
type Style = Video | Rating 


type alias Item = 
  { link : String
  , thumbnail : String
  , subText : Maybe String
  , variant : Variant
  , style : Style
  }

styleClass : Style -> String
styleClass style =
  case style of
    Video ->
      "mc-carousel__item--video"
    Rating ->
      "mc-carousel__item--rating"

variantClass : Variant -> String
variantClass variant =
  case variant of
    InfiniteScroll ->
      "mc-carousel mc-carousel--infinite-scroll"

    Pagination ->
      "mc-carousel mc-carousel--pagination"

carousel : List Item -> Html msg
carousel items =
  div [ class "mc-carousel-group" ] (List.map viewItem items)

getSubText : Maybe String -> Html msg
getSubText subText =
  case subText of
    Just text ->
      text
    Nothing ->
      text ""

viewItem : Item -> Html msg
viewItem item =
  let
      subText = getSubText item.subText
  in
  div [class (variantClass item.variant) ] [
    div [class (styleClass item.style)] [
      text "hello world"
      , subText
      ]
    ]
