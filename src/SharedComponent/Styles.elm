module SharedComponent.Styles exposing (..)


import Html exposing (Attribute)
import Html.Attributes exposing (style, value)


buttonStyle : Attribute a
buttonStyle =
  style
    [ ("width", "10%")
    , ("font-size", "14px")
    , ("color", "#f10b0b")
    , ("height", "3em")
    , ("margin-right", "10px")
    ]


inputStyle : Attribute a
inputStyle =
  style
    [ ("width", "10%")
    , ("font-size", "14px")
    , ("height", "2em")
    , ("margin-right", "10px")
    ]


lastSpan : Attribute a
lastSpan =
  style
    [ ("margin-left", "10px")
    ]


group : Attribute a
group =
  style
    [ ("display", "flex")
    , ("align-items", "center")
    , ("background-color", "#000")
    , ("color", "#fff")
    , ("padding", "10px")
    ]
