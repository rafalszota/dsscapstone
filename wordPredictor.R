predictWords <- function(text, contextData) {
        
        lastWords <- tail(unlist(strsplit(text, split=" ")),3)
        
        
        head(c(lastWords, contextData[1:3]),3)
        
}


