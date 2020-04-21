
import Html exposing(..)

type alias Model = {message : String}

type Msg = Message String


model: Model
model =
    Model"Welcome to my first elm program"

-- update here taking a message and model then return a new model

update : Msg -> Model -> Model
update msg Model = 
case msg of
    Message newMessage -> {model | message = newMessage}

--View takes on a model and return it as an HTML Div which is a function taht takes 2 parameters
view : Model -> Html
view model = div [] [text model.message]




main = 
  beginerProgram
  {model = model
  ,view = view
  ,update = update
  }

