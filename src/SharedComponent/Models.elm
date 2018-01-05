module SharedComponent.Models exposing (..)


import SharedComponent.Messages exposing (Msg)
import SharedComponent.Flags exposing (Flags)


type alias Model = { title: String
                   , text : String
                   , clicks: Int
                   }


init : Flags -> ( Model, Cmd Msg )
init flags =
   ((Model flags.title "" 0), Cmd.none)
