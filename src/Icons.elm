module Icons exposing (youtubeIcon)

{-| Self-contained icons not available in elm-lucide (e.g. brand icons).

Same type signature and sizing behavior as `LucideIcons.*`:
inline `width:1em;height:1em`, so size via parent `font-size`.

@docs youtubeIcon

-}

import Html as H
import Html.Attributes as HA
import Svg as S
import Svg.Attributes as SA


baseOptions : List (S.Attribute msg)
baseOptions =
    [ SA.width "24"
    , SA.height "24"
    , SA.fill "none"
    , SA.stroke "currentColor"
    , SA.strokeWidth "2"
    , SA.strokeLinecap "round"
    , SA.strokeLinejoin "round"
    , SA.viewBox "0 0 24 24"
    , HA.style "width" "1em"
    , HA.style "height" "1em"
    ]


{-| youtubeIcon

youtube (Lucide legacy brand icon, no longer shipped upstream)

-}
youtubeIcon : List (S.Attribute msg) -> H.Html msg
youtubeIcon options =
    S.svg (baseOptions ++ options)
        [ S.path [ SA.d "M2.5 17a24.12 24.12 0 0 1 0-10 2 2 0 0 1 1.4-1.4 49.56 49.56 0 0 1 16.2 0A2 2 0 0 1 21.5 7a24.12 24.12 0 0 1 0 10 2 2 0 0 1-1.4 1.4 49.55 49.55 0 0 1-16.2 0A2 2 0 0 1 2.5 17" ] []
        , S.path [ SA.d "m10 15 5-3-5-3z" ] []
        ]
