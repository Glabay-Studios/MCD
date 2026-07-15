module Components.Cards.Photo.V1 exposing (..)

import Components.Cards.Base.V1 exposing (baseCard)
import Html exposing (..)
import Html.Attributes exposing (..)


type alias PhotoCardType =
    { title : String
    , image : String
    , subContent : Maybe String
    }


photoCard : PhotoCardType -> Html msg
photoCard l =
    baseCard (Just "photoCard")
        [ text l.title
        , img [ src l.image ] []
        ]
