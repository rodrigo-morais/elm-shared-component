port module Ports exposing (..)


port changedText : String -> Cmd msg


port clicks : (Int -> msg) -> Sub msg
