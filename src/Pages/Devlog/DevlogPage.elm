module Pages.Devlog.DevlogPage exposing (view)


import Html exposing (Html, div, h1, p, text)
import Html.Attributes exposing (class)
import Markdown


view : Html msg
view =
    div [ class "pageContainer" ]
        [ h1 [] [ text "DevLog" ]
        , Markdown.toHtml [] """
          # DevLog
          
          > This is so cool

          1. something
          2. else

        """ 
        ]
