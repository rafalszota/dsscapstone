library(shiny)
source("wordPredictor.R")
source("dataLoad.R")


shinyServer(function(input, output) {
        
        predictedWords <- reactive({predictWords(input$fullText, contextData)})
        output$predictedWord1 <- renderText({predictedWords()[1]})
        output$predictedWord2 <- renderText({predictedWords()[2]})
        output$predictedWord3 <- renderText({predictedWords()[3]})

})

contextData <- loadContextData()

