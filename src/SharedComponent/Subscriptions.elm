module SharedComponent.Subscriptions exposing(..)


import SharedComponent.Messages exposing (..)
import SharedComponent.Models exposing (Model)
import Ports exposing (clicks)


subscriptions : Model -> Sub Msg
subscriptions model =
  clicks Count
