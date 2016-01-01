library(shiny)

shinyUI(fluidPage(fluidRow(
        column(7,
               h3("Input your text here"), 
               tags$style(type="text/css", "textarea {width:100%}"),
               tags$textarea(id="fullText", rows=5, "Default value"), 
               submitButton("Predict next words"),
               h3("Suggestions for next word"),
               verbatimTextOutput("predictedWord1"),
               verbatimTextOutput("predictedWord2"),
               verbatimTextOutput("predictedWord3")
        ),
        
        column(5,
               h3("How it works"),
               "here we put some explanation on the algorithm, etc."
        )
        
        
)))