module StyleGuide exposing (breakpoint, color, colorRaw, fontFamily, spacing, textSize)

import Css exposing (fontFamilies, fontSize, hex, px, rem)
import Css.Media as Media exposing (only, screen, withMedia)


colorRaw =
    { primary = "#E0444C"
    , background = "#081B39"
    }


color =
    { text = hex "FFFFFF"
    , link = hex "E0444C"
    , linkHover = hex "E0444C"
    , icon = hex "FFFFFF"
    , background = hex colorRaw.background
    , backgroundAlpha = hex "00000042"
    , combinator = hex "3a2226"
    , language = hex "294ba3"
    , primary = hex colorRaw.primary
    , footer = hex "5e0819"
    }


textSize =
    { small = fontSize (rem 0.75)
    , normal = fontSize (rem 1)
    , medium = fontSize (rem 1.5)
    , large = fontSize (rem 2)
    , xLarge = fontSize (rem 2.5)
    , xxLarge = fontSize (rem 4)
    }


spacing =
    { tiny = rem 0.5
    , small = rem 1
    , medium = rem 2
    , large = rem 3
    , xLarge = rem 4
    }


fontFamily =
    { primary = fontFamilies [ "Ropa Sans", "sans-serif" ]
    , secondary = fontFamilies [ "Rhodium Libre", "serif" ]
    }


breakpoint =
    { tablet = withMedia [ only screen [ Media.maxWidth (px 800) ] ]
    }
