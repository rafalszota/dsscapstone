library(shiny)

shinyUI(fluidPage(fluidRow(
        column(7,
               h3("Input your text here"), 
               tags$textarea(id="fullText", rows=5, "Default value", style="width:100%"), 
               actionButton("predict","Predict next word"),
               
               h3("Suggestet next word"),
               actionButton("controller1", label=textOutput("option1"), style="width:100%"),
               
               h3("Other possibilities"),
               actionButton("controller2", label=textOutput("option2"), style="width:100%"),
               actionButton("controller3", label=textOutput("option3"), style="width:100%")
               
               
        ),
        
        column(5,
               h3("How it works"),
               "here we put some explanation on the algorithm, etc."
        )
        
        
)))