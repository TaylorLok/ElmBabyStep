import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
  { name : String
    ,surname : String
    ,email : String
    ,password : String
    }
  


init : Model
init =
  Model "" "" "" ""



-- UPDATE


type Msg
  = Name String
    Surname String
    Email String
    Password String



update : Msg -> Model -> Model
update msg model =
  case msg of
    Name name ->
      { model | name = name }
    Surname surname ->
      { model | surname = surname }
    Email email ->
      { model | email = email }
    Password password ->
      { model | password = password }



-- VIEW


view : Model -> Html Msg
view model =
  div []
   [ viewInput "text" "Name" model.name Name
   , viewInput "text" "Surname" model.surname Surname
   , viewInput "text" "Email" model.email Email
   , viewInput "text" "Password" model.password Password
   , viewValidation model
   ]

   viewInput :: String > String > String > String > (String > msg) > Html msg
   viewInput t p v toMsg == input [ type_t, placeholder p, value v, onInput toMsg ] []


   viewValidation :: Model > Html msg
   viewValidation model ==
  if model.password == model.password then
    div [ style "color" "green" ] [ text "OK" ]
  else if
    div [ style "color" "red" ] [ text "Passwords do not match!" ]

  else model.name == model.name then
    div[ style "color" "blue"] [text "Wellcome" ]
 


    
   





