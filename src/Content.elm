module Content exposing (courseCarousel, carouselItems, navItems, summaryItems)


{- Author: TuringProblem @15:38 20260718 -}

{-| App content/data for MidnightCoder Docs.

This is where the site's actual items live — nav links, accordion sections,
etc. Keeping it out of Main means Main only wires state + layout, and the
content is editable in one obvious place.

-}

import Accordion
import Carousel
import Html exposing (a, text)
import Html.Attributes exposing (href)
import Icons
import LucideIcons
import Navbar


navItems : List Navbar.NavItem
navItems =
    [ { icon = LucideIcons.homeIcon [], label = "Home", href = "#home" }
    , { icon = LucideIcons.fileTextIcon [], label = "DevLog", href = "#devlog" }
    , { icon = Icons.youtubeIcon [], label = "Videos", href = "https://www.youtube.com/@Glabay" }
    ]


reusedImage : String
reusedImage = "https://i.ytimg.com/vi/lVcMIgbf0M4/hqdefault.jpg?sqp=-oaymwFBCNACELwBSFryq4qpAzMIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB8AEB-AH-CYAC0AWKAgwIABABGGUgVChNMA8=&rs=AOn4CLBecwiWiiHrnCm3Igm2ykm8hXbi1w"


courseCarousel : List Carousel.Item
courseCarousel =
  [ {link = "midnightcoder.dev"
    , thumbnail = ""
    , subText = Just ""
    , style = Carousel.Rating
    }
    ,{link = "midnightcoder.dev"
    , thumbnail = ""
    , subText = Just ""
    , style = Carousel.Rating
    }
    ,{link = "midnightcoder.dev"
    , thumbnail = ""
    , subText = Just ""
    , style = Carousel.Rating
    }
  ]

carouselItems : List Carousel.Item
carouselItems =

    [ { link = "https://www.youtube.com/watch?v=lVcMIgbf0M4"
      , thumbnail = reusedImage
      , subText = Just "Most Java Developers Learn OOP the Wrong Way"
      , style = Carousel.Video
      }
    , { link = "https://www.youtube.com/watch?v=cK0G9-N9Ikw"
      , thumbnail = reusedImage
      , subText = Just "The Java Feature That Makes Objects Behave Differently"
      , style = Carousel.Video
      }
    , { link = "https://www.youtube.com/watch?v=tfvqJluGdas"
      , thumbnail = "https://i.ytimg.com/vi/tfvqJluGdas/hqdefault.jpg?sqp=-oaymwFBCPYBEIoBSFryq4qpAzMIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB8AEB-AH-CYAC0AWKAgwIABABGGUgTShlMA8=&rs=AOn4CLBeCOKuCI-pHCH5Bo3VYdTWpXO4Pg"
      , subText = Just "Learn Java Object-Oriented Programming with Games"
      , style = Carousel.Video
      }
    , { link = "https://www.youtube.com/watch?v=MAnXlpXpFRQ&t=56s"
      , thumbnail = "https://i.ytimg.com/vi/MAnXlpXpFRQ/hqdefault.jpg?sqp=-oaymwEnCPYBEIoBSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLCCzlJYYSmlL41zJIliPGHHcIrNmg"
      , subText = Just "Java mapped to Reality?"
      , style = Carousel.Video
      }
    , { link = "https://www.youtube.com/watch?v=BvFFKN2ZLTg"
      , thumbnail = "https://i.ytimg.com/vi/BvFFKN2ZLTg/hqdefault.jpg?sqp=-oaymwEnCPYBEIoBSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLDJe4rmaB8afZz11Byq1M5ZYxJ_qw"
      , subText = Just "Why would anyone learn Java in 2026?"
      , style = Carousel.Video
      }
    , { link = "https://www.youtube.com/watch?v=gHMYb8lCPlk&t=23s"
      , thumbnail = "https://i.ytimg.com/vi/gHMYb8lCPlk/hqdefault.jpg?sqp=-oaymwFBCNACELwBSFryq4qpAzMIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB8AEB-AH-CYAC0AWKAgwIABABGEwgWihlMA8=&rs=AOn4CLBQroKHQlaF0Aij-B3ZJ-jLfQVdPw"
      , subText = Just "Midnight Mentor - Rock Paper Scissors (Java Swing)"
      , style = Carousel.Video
      }
    , { link = "https://www.youtube.com/watch?v=Rn-Z0qWnN0k"
      , thumbnail = "https://i.ytimg.com/vi/Rn-Z0qWnN0k/hqdefault.jpg?sqp=-oaymwFBCPYBEIoBSFryq4qpAzMIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB8AEB-AH-CYAC0AWKAgwIABABGEogXyhlMA8=&rs=AOn4CLA3cYhBuo_zyNr89b2FpjTgAu2rDw"
      , subText = Just "Java Spring Boot Developer Portfolio Part 4"
      , style = Carousel.Video
      }
    , { link = "https://www.youtube.com/watch?v=CATSLpHB_Hs&t=66s"
      , thumbnail = "https://i.ytimg.com/vi/CATSLpHB_Hs/hqdefault.jpg?sqp=-oaymwFBCPYBEIoBSFryq4qpAzMIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB8AEB-AH-CYAC0AWKAgwIABABGE4gZShVMA8=&rs=AOn4CLAN_Lde4P6sci7JjYnSlCes_2J38Q"
      , subText = Just "Java Spring Boot Developer Portfolio Part 3"
      , style = Carousel.Video
      }
    , { link = "https://www.youtube.com/watch?v=iPFLFvi7F98"
      , thumbnail = reusedImage
      , subText = Just "Java Spring Boot Developer Portfolio Part 2"
      , style = Carousel.Video
      }
    , { link = "https://www.youtube.com/watch?v=BMcNBL8Sxpw"
      , thumbnail = "https://i.ytimg.com/vi/BMcNBL8Sxpw/hqdefault.jpg?sqp=-oaymwFBCPYBEIoBSFryq4qpAzMIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB8AEB-AH-CYAC0AWKAgwIABABGBggWCh_MA8=&rs=AOn4CLAwBp7ARlAt3UGj8Bvi_O2W__zCBg"
      , subText = Just "Java Spring Boot Developer Portfolio Part 1"
      , style = Carousel.Video
      }
    ]


summaryItems : List Accordion.Item
summaryItems =
    [ { title = "Join the discord!"
      , content = a [ href "https://discord.gg/HCrMST97r" ] [ text "Midnight Coder Discord" ]
      , variant = Accordion.Midnight
      }
    , { title = "Coffee"
      , content = text "Keep your curiousity open, your skills sharp, and that coffee cup full ☕️"
      , variant = Accordion.Light
      }
    ]
