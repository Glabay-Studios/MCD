module Content exposing (navItems, summaryItems)


{- Author: TuringProblem @15:38 20260718 -}

{-| App content/data for MidnightCoder Docs.

This is where the site's actual items live — nav links, accordion sections,
etc. Keeping it out of Main means Main only wires state + layout, and the
content is editable in one obvious place.

-}

import Accordion
import Html exposing (a, text)
import Html.Attributes exposing (href)
import Icons
import LucideIcons
import Navbar


navItems : List Navbar.NavItem
navItems =
    [ { icon = LucideIcons.homeIcon [], label = "Home", href = "#" }
    , { icon = LucideIcons.fileTextIcon [], label = "Docs", href = "#" }
    , { icon = Icons.youtubeIcon [], label = "Videos", href = "https://www.youtube.com/@Glabay" }
    ]


summaryItems : List Accordion.Item
summaryItems =
    [ { title = "Join the discord!"
      , content = a [ href "https://discord.gg/HCrMST97r" ] [ text "Midnight Coder Discord" ]
      , variant = Accordion.Midnight
      }
    , { title = "food"
      , content = text "This is something I like"
      , variant = Accordion.Light
      }
    ]
