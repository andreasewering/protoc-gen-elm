module Generator.Common exposing (..)

import Elm.CodeGen as C


decoderName : String -> String
decoderName typeName =
    "decode" ++ typeName


encoderName : String -> String
encoderName typeName =
    "encode" ++ typeName


defaultName : String -> String
defaultName typeName =
    "default" ++ typeName


decoderDocumentation : String -> C.Comment C.DocComment
decoderDocumentation typeName =
    C.emptyDocComment |> C.markdown ("Decode a `" ++ typeName ++ "` from Bytes")


encoderDocumentation : String -> C.Comment C.DocComment
encoderDocumentation typeName =
    C.emptyDocComment |> C.markdown ("Encode a `" ++ typeName ++ "` to Bytes")


defaultDocumentation : String -> C.Comment C.DocComment
defaultDocumentation typeName =
    C.emptyDocComment |> C.markdown ("Default for " ++ typeName ++ ". Should only be used for 'required' decoders as an initial value.")
