library(shiny)
library(data.table)
source("wordPredictor.R")
source("dataLoad.R")



shinyServer(function(session,input, output) {
        
        predictedWords <- NA
        
        doNextPrediction <- function(text) {
                predictedWords<<- predictWords(text, contextData)
                output$option1 <- renderPrint({cat(predictedWords[1])})
                output$option2 <- renderPrint({cat(predictedWords[2])})
                output$option3 <- renderPrint({cat(predictedWords[3])})
                output$option4 <- renderPrint({cat(predictedWords[4])})
        } 
        
        addPredictedWord <- function(word) {
                
                text <- paste(sub("\\s+$", "", input$fullText), word, "")
                updateTextInput(session,"fullText", value=text)
                doNextPrediction(text)
        }
        
        
      
        doNextPrediction("default value")
        
        observeEvent(input$predict, {doNextPrediction(input$fullText)})
        observeEvent(input$controller1, {addPredictedWord(predictedWords[1])})
        observeEvent(input$controller2, {addPredictedWord(predictedWords[2])})
        observeEvent(input$controller3, {addPredictedWord(predictedWords[3])})
        observeEvent(input$controller4, {addPredictedWord(predictedWords[4])})
        
})

contextData <- loadContextData()

