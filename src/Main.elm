module Main exposing (main)


import Html


import SharedComponent.Models exposing (init)
import SharedComponent.Updates exposing (update)
import SharedComponent.Views exposing (view)
import SharedComponent.Subscriptions exposing (subscriptions)


main =
  Html.programWithFlags { init = init, view = view, update = update, subscriptions = subscriptions }
