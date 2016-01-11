library(shiny)

shinyUI(fluidPage(
        
        tags$head(
                tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
        ),
        
        fluidRow(column(7,
               h3("Input your text here"), 
               tags$textarea(id="fullText", rows=5, "Default value"), 
               actionButton("predict","Predict next word"),
               
               h3("Suggestet next word"),
               actionButton("controller1", label=textOutput("option1")),
               
               h3("Other possibilities"),
               actionButton("controller2", label=textOutput("option2")),
               actionButton("controller3", label=textOutput("option3"))
               
               
        ),
        
        column(5,
               h3("How it works"),
               
               h4("The Application"),
               tags$ul(
                tags$li("The purpose of the application is to facilitate text typing."),
                tags$li("Although presented project is web-based, the usual context for 
                         the application could be a smart-phone or other similar portable device."),
                tags$li("The application analyses the text user is typing and suggest 
                         few words which could be written next.")
               ),
               
               
               h4("Behaviour"),
                tags$ul(
                tags$li("The application contains a text area and predict button. User might type 
                        any text in the area and hit the button when they want the prediction."),
                tags$li("The application generates few suggestions. There is always one top 
                        prediction and several other likely suggestions."),
                tags$li("User might add one of the predicted words to the typed text by clicking 
                        on the suggestion. When this is done the application automatically 
                        predict next words based on the choice made.")),
               
               
               
               h4("Language model"),
               tags$ul(
                tags$li("The core of the application uses the concept of n-gram language model."),
                tags$li("Language model was created with over three millions of English texts 
                        sourced from twitter, blogs and online news."),
                tags$li("The model uses 4-, 3- and 2- grams and measures relative frequency
                        (probability) of all grams available in the corpus.")),
               
        
               h4("The algorithm"),
               tags$ul(
                tags$li("The prediction algorithm is a back-off implementation, which iterates 
                        over the language model."),
                tags$li("For efficiency purposes the language model was reduced to a million most 
                        frequent n-grams."),
                tags$li("In order to guarantee at least three predictions a the algorithm uses a 
                        fallback to unigram: most frequent English words: the, a, of."))

        )
        
        
)))