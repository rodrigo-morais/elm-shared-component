module SharedComponent.Updates exposing (..)


import SharedComponent.Messages exposing (..)
import SharedComponent.Models exposing (Model)
import Ports exposing (changedText, clicks)


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Change newText ->
      (Model model.title newText model.clicks, Cmd.none)

    ChangeText ->
      case String.isEmpty model.text || model.title == model.text of
        True ->
          (model, Cmd.none)
        False -> 
         (Model model.text "" model.clicks, changedText model.text)

    Count qtd ->
      (Model model.title model.text qtd, Cmd.none)



