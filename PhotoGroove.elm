module PhotoGroove exposing (..)
import Array exposing (Array)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Html.App

type alias Photo = 
    { url: String }

type alias Model =
    { photos: List Photo, selectedUrl : String }

type alias Msg = 
    { operation : String, data : String }

urlPrefix : String
urlPrefix = "http://elm-in-action.com/"

initialModel : Model
initialModel = 
    { photos = 
        [ { url = "1.jpeg"}
        , { url = "2.jpeg"}
        , { url = "3.jpeg"}
        ]
    , selectedUrl = "1.jpeg"
    }

photoArray : Array Photo
photoArray =
    Array.fromList initialModel.photos

viewThumbnail 
    : String
    -> Photo
    -> Html Msg

viewThumbnail selectedUrl thumbnail = 
    img
        [ src (urlPrefix ++ thumbnail.url) 
        , classList [ ( "selected", selectedUrl == thumbnail.url ) ]
        , onClick { operation = "SELECT_PHOTO", data = thumbnail.url }
        ] []

view
    : Model
    -> Html Msg
view model = 
  div [ class "content" ]
        [ h1 [] [ text "Photo Groove" ]
        , button 
            [ onClick { operation = "SURPRISE_ME", data = "" }]
            [ text "Surprise Me!" ]
        , div [ id "thumbnails" ] 
            (List.map (viewThumbnail model.selectedUrl) model.photos)
        , img
            [ class "large"
            , src (urlPrefix ++ "large/" ++ model.selectedUrl)
            ]
            []
        ]

update
    : Msg
    -> { a | selectedUrl: String }
    -> { a | selectedUrl: String }
update msg model = 
    case msg.operation of
        "SELECT_PHOTO" ->
            { model | selectedUrl = msg.data }
        "SURPRISE_ME" ->
            { model | selectedUrl = "2.jpeg" }
        _ ->
            model

main : Program Never
main = 
    Html.App.beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }
