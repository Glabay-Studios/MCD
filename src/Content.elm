module Content exposing (courseCarousel, carouselItems, navItems, summaryItems)


{- Author: TuringProblem @15:38 20260718 -}

{-| App content/data for MidnightCoder Docs.

This is where the site's actual items live — nav links, accordion sections,
etc. Keeping it out of Main means Main only wires state + layout, and the
content is editable in one obvious place.

-}

import Accordion
import Carousel
import Html exposing (a, text, div, p, span)
import Html.Attributes exposing (href, class)
import Content.HigherLower.V1 as HL 
import Content.BookTracker.V1 as BT
import Content.BankSimulator.V1 as BS
import Content.RockPaper.V1 as RP
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


courseCarousel : List (Carousel.Item msg)
courseCarousel =
  [ {link = "https://midnightcoder.dev/challenge/b657d001-6e21-4c0b-89be-f37311289fa5"
    , thumbnail = Just ""
    , subText = Just ""
    , style = Carousel.Rating
    , nonThumbnailContent = [HL.view] 
    }
    ,{link = "https://midnightcoder.dev/challenge/18805c5d-e24e-411a-82fe-b863a9ff4c00"
    , thumbnail = Just ""
    , subText = Just ""
    , style = Carousel.Rating
    , nonThumbnailContent = [BT.view]
    }
    ,{link = "https://midnightcoder.dev/challenge/cd2b20e9-c30a-4c66-9d0c-eb3ed02de7fc"
    , thumbnail = Just ""
    , subText = Just ""
    , style = Carousel.Rating
    , nonThumbnailContent = [BS.view]
    }
  ,{link = "https://midnightcoder.dev/challenge/fa63370e-c7f5-472e-8a79-b7f15d6618ca"
    , thumbnail = Just ""
    , subText = Just ""
    , style = Carousel.Rating
    , nonThumbnailContent = [RP.view]
    }
  ]

carouselItems : List (Carousel.Item msg)
carouselItems =

    [ 
    { link = "https://www.youtube.com/watch?v=gLBzQwuEDBo"
    , thumbnail = Just "https://i.ytimg.com/vi/gLBzQwuEDBo/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLAVMvE6pDvSkzsRuwbYO-WY_1aAVw"
    , subText = Just "Spring Modulith,;What You Need to Know to Stop Using Microservices"
    , style = Carousel.Video
    , nonThumbnailContent = []
    }
    , { link = "https://www.youtube.com/watch?v=3VyIO6AVUxQ&t=225s"
    , thumbnail = Just "https://i.ytimg.com/vi/3VyIO6AVUxQ/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLB70T6_p3ChRmvY0pUKftWdrU89wQ"
    , subText = Just "Java Generics, Data Structures & the Mental Models Behind Them"
    , style = Carousel.Video
    , nonThumbnailContent = []
    }
    , { link = "https://www.youtube.com/watch?v=V8-SMLbKGw0"
    , thumbnail = Just "https://i.ytimg.com/vi/V8-SMLbKGw0/hqdefault.jpg?sqp=-oaymwEnCOADEI4CSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLDPxoRZ-9PaiP9KBUwh5kt09ARl2Q"
    , subText = Just "Why You Struggle With DSA | The Modern Java Workflow"
    , style = Carousel.Video
    , nonThumbnailContent = []
    }
    , { link = "https://www.youtube.com/watch?v=_8OYV0RG5uM"
    , thumbnail = Just "https://i.ytimg.com/vi/_8OYV0RG5uM/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLDKJn2iwP1Eylue3dMRLcE3j1PCbA"
    , subText = Just "Spring; why should I upgrade to Spring Boot 4.x"
    , style = Carousel.Video
    , nonThumbnailContent = []
    }
    , { link = "https://www.youtube.com/watch?v=EJSsDhxI5Jc"
    , thumbnail = Just "https://i.ytimg.com/vi/EJSsDhxI5Jc/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLARtcIQfzfNDUjvejOGGvlQnQy4xQ"
    , subText = Just "Java 25; Spring Boot Security - Crash Course"
    , style = Carousel.Video
    , nonThumbnailContent = []
    }
    , { link = "https://www.youtube.com/watch?v=Q-Xr-pbRG14"
    , thumbnail = Just "https://i.ytimg.com/vi/Q-Xr-pbRG14/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLAl7h9sgZK05Pi7IXPmFUr2B6uPKA"
    , subText = Just "Modern Java Roadmap 2026: Zero to Pro"
    , style = Carousel.Video
    , nonThumbnailContent = []
    }
    , { link = "https://www.youtube.com/watch?v=TrB85pfNhck"
    , thumbnail = Just "https://i.ytimg.com/vi/TrB85pfNhck/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLC6u29Qn7P4HScAktPSZH9HKd0STg"
    , subText = Just "Why Your Spring Boot Project Isn't Production Ready"
    , style = Carousel.Video
    , nonThumbnailContent = []
    }
    , { link = "https://www.youtube.com/watch?v=i7Vy1bReX6g"
    , thumbnail = Just "https://i.ytimg.com/vi/i7Vy1bReX6g/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLCIDdHw2P-7Auwxa2kNi64D3yl8KA"
    , subText = Just "Your Java App Has a Problem... It Can't Remember Anything"
    , style = Carousel.Video
    , nonThumbnailContent = []
    }
    ,{ link = "https://www.youtube.com/watch?v=zA3eLEJBEGo&t=18s"
    , thumbnail = Just "https://i.ytimg.com/vi/zA3eLEJBEGo/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLBoMN9cjLWYMzH-hvLRZYEwavxGpA"
    , subText = Just "DSA in Java: The Only Roadmap You Need To Follow"
    , style = Carousel.Video
    , nonThumbnailContent = []
    }
    ,{ link = "https://www.youtube.com/watch?v=vmnf_liGBY0&t=214s"
    , thumbnail = Just "https://i.ytimg.com/vi/vmnf_liGBY0/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLCFMBJRw-BSuFgbgCebB6QP5E2jUg"
    , subText = Just "Modern Java is about to change forever"
    , style = Carousel.Video
    , nonThumbnailContent = []
    }
    , { link = "https://www.youtube.com/watch?v=zxF3QTJ6Tes"
    , thumbnail = Just "https://i.ytimg.com/vi/zxF3QTJ6Tes/hqdefault.jpg?sqp=-oaymwEnCNACELwBSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLAysal-saORVZ389RWQk9ROX4iR3A"
    , subText = Just "Docker Isn't as Complicated as You Think"
    , style = Carousel.Video
    , nonThumbnailContent = []
    }
    , { link = "https://www.youtube.com/watch?v=qOsVmVlBHSs"
      , thumbnail = Just "https://i.ytimg.com/vi/qOsVmVlBHSs/hqdefault.jpg?sqp=-oaymwFBCNACELwBSFryq4qpAzMIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB8AEB-AHOBYACgAqKAgwIABABGGUgRihAMA8=&rs=AOn4CLDQGm3sPzVnl0tH2ZdxaOyx4-XeNg"
      , subText = Just "About Me | Mike Glabay"
      , style = Carousel.Video
      , nonThumbnailContent = []
      }
    , { link = "https://www.youtube.com/watch?v=kHnfim95aus"
      , thumbnail = Just "https://i.ytimg.com/vi/kHnfim95aus/hqdefault.jpg?sqp=-oaymwEnCNACELwBSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLAn_oDug8n5mDCkTKtavylgbS4vSA"
      , subText = Just "Git, how to save a production nightmare"
      , style = Carousel.Video
      , nonThumbnailContent = []
      }
    , { link = "https://www.youtube.com/watch?v=GrcC6RAFVvg"
      , thumbnail = Just "https://i.ytimg.com/vi/GrcC6RAFVvg/hqdefault.jpg?sqp=-oaymwEnCNACELwBSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLCS_uX2YHZdBPxmG9mssq9m8FTogA"
      , subText = Just "Feature Branches, Atomic Branches, and Better Code"
      , style = Carousel.Video
      , nonThumbnailContent = []
      }
      ,{ link = "https://www.youtube.com/watch?v=lVcMIgbf0M4"
      , thumbnail = Just reusedImage
      , subText = Just "Most Java Developers Learn OOP the Wrong Way"
      , style = Carousel.Video
      , nonThumbnailContent = []
      }
    , { link = "https://www.youtube.com/watch?v=cK0G9-N9Ikw"
      , thumbnail = Just reusedImage
      , subText = Just "The Java Feature That Makes Objects Behave Differently"
      , style = Carousel.Video
      , nonThumbnailContent = []
      }
    , { link = "https://www.youtube.com/watch?v=tfvqJluGdas"
      , thumbnail = Just "https://i.ytimg.com/vi/tfvqJluGdas/hqdefault.jpg?sqp=-oaymwFBCPYBEIoBSFryq4qpAzMIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB8AEB-AH-CYAC0AWKAgwIABABGGUgTShlMA8=&rs=AOn4CLBeCOKuCI-pHCH5Bo3VYdTWpXO4Pg"
      , subText = Just "Learn Java Object-Oriented Programming with Games"
      , style = Carousel.Video
      , nonThumbnailContent = []
      }
    , { link = "https://www.youtube.com/watch?v=MAnXlpXpFRQ&t=56s"
      , thumbnail = Just "https://i.ytimg.com/vi/MAnXlpXpFRQ/hqdefault.jpg?sqp=-oaymwEnCPYBEIoBSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLCCzlJYYSmlL41zJIliPGHHcIrNmg"
      , subText = Just "Java mapped to Reality?"
      , style = Carousel.Video
      , nonThumbnailContent = []
      }
    , { link = "https://www.youtube.com/watch?v=BvFFKN2ZLTg"
      , thumbnail = Just "https://i.ytimg.com/vi/BvFFKN2ZLTg/hqdefault.jpg?sqp=-oaymwEnCPYBEIoBSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLDJe4rmaB8afZz11Byq1M5ZYxJ_qw"
      , subText = Just "Why would anyone learn Java in 2026?"
      , style = Carousel.Video
      , nonThumbnailContent = []
      }
    , { link = "https://www.youtube.com/watch?v=gHMYb8lCPlk&t=23s"
      , thumbnail = Just "https://i.ytimg.com/vi/gHMYb8lCPlk/hqdefault.jpg?sqp=-oaymwFBCNACELwBSFryq4qpAzMIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB8AEB-AH-CYAC0AWKAgwIABABGEwgWihlMA8=&rs=AOn4CLBQroKHQlaF0Aij-B3ZJ-jLfQVdPw"
      , subText = Just "Midnight Mentor - Rock Paper Scissors (Java Swing)"
      , style = Carousel.Video
      , nonThumbnailContent = []
      }
    , { link = "https://www.youtube.com/watch?v=Rn-Z0qWnN0k"
      , thumbnail = Just "https://i.ytimg.com/vi/Rn-Z0qWnN0k/hqdefault.jpg?sqp=-oaymwFBCPYBEIoBSFryq4qpAzMIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB8AEB-AH-CYAC0AWKAgwIABABGEogXyhlMA8=&rs=AOn4CLA3cYhBuo_zyNr89b2FpjTgAu2rDw"
      , subText = Just "Java Spring Boot Developer Portfolio Part 4"
      , style = Carousel.Video
      , nonThumbnailContent = []
      }
    , { link = "https://www.youtube.com/watch?v=CATSLpHB_Hs&t=66s"
      , thumbnail = Just "https://i.ytimg.com/vi/CATSLpHB_Hs/hqdefault.jpg?sqp=-oaymwFBCPYBEIoBSFryq4qpAzMIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB8AEB-AH-CYAC0AWKAgwIABABGE4gZShVMA8=&rs=AOn4CLAN_Lde4P6sci7JjYnSlCes_2J38Q"
      , subText = Just "Java Spring Boot Developer Portfolio Part 3"
      , style = Carousel.Video
      , nonThumbnailContent = []
      }
    , { link = "https://www.youtube.com/watch?v=iPFLFvi7F98"
      , thumbnail = Just reusedImage
      , subText = Just "Java Spring Boot Developer Portfolio Part 2"
      , style = Carousel.Video
      , nonThumbnailContent = []
      }
    , { link = "https://www.youtube.com/watch?v=BMcNBL8Sxpw"
      , thumbnail = Just "https://i.ytimg.com/vi/BMcNBL8Sxpw/hqdefault.jpg?sqp=-oaymwFBCPYBEIoBSFryq4qpAzMIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB8AEB-AH-CYAC0AWKAgwIABABGBggWCh_MA8=&rs=AOn4CLAwBp7ARlAt3UGj8Bvi_O2W__zCBg"
      , subText = Just "Java Spring Boot Developer Portfolio Part 1"
      , style = Carousel.Video
      , nonThumbnailContent = []
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
