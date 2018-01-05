module SharedComponent.Views exposing (..)


import Html exposing (div, span, text, button, input)
import Html.Attributes exposing (value)
import Html.Events exposing (onClick, onInput)


import SharedComponent.Models exposing (Model)
import SharedComponent.Messages exposing (..)
import SharedComponent.Styles exposing (..)


view model =
  div [ group ]
      [ input [ inputStyle, onInput Change, value model.text ] []
      , button [ buttonStyle, onClick ChangeText ] [ text "Change text" ]
      , span [] [ text model.title ]
      , span [ lastSpan ] [ text ("Clicks: " ++ (toString model.clicks)) ]
      ]
