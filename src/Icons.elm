module Icons exposing (coffeeCupIcon, youtubeIcon)

{-| Self-contained icons not available in elm-lucide (e.g. brand icons).

Same type signature and sizing behavior as `LucideIcons.*`:
inline `width:1em;height:1em`, so size via parent `font-size`.

@docs youtubeIcon, coffeeCupIcon

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

{-| coffeeCupIcon

coffee mug (Font Awesome style, filled path)

-}
coffeeCupIcon : List (S.Attribute msg) -> H.Html msg
coffeeCupIcon options =
    S.svg
        ([ SA.viewBox "0 0 512 512"
         , SA.fill "currentColor"
         , HA.style "width" "1em"
         , HA.style "height" "1em"
         ]
            ++ options
        )
        [ S.path [ SA.d "M448 192H64C28.7 192 0 220.7 0 256V384c0 35.3 28.7 64 64 64H384c35.3 0 64-28.7 64-64V256c0-35.3-28.7-64-64-64H448zM512 256c0-35.3-28.7-64-64-64H432V320H448c35.3 0 64-28.7 64-64V256zM128 32c0-17.7-14.3-32-32-32S64 14.3 64 32V96c0 17.7 14.3 32 32 32s32-14.3 32-32V32zm128 0c0-17.7-14.3-32-32-32s-32 14.3-32 32V96c0 17.7 14.3 32 32 32s32-14.3 32-32V32zm128 0c0-17.7-14.3-32-32-32s-32 14.3-32 32V96c0 17.7 14.3 32 32 32s32-14.3 32-32V32z" ] []
        ]
