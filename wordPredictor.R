predictWords <- function(text, context) {
        
        text <- cleanText(text)
        
        v4 <- context[["table4g"]][gsub("^.* (.* .* .*)$", "\\1", text)]$value
        v3 <- context[["table3g"]][gsub("^.* (.* .*)$", "\\1", text)]$value        
        v2 <- context[["table2g"]][gsub("^.* (.*)$", "\\1", text)]$value
        v1 <- c("the", "a", "to", "and")
        
        result <- c(v4, v3, v2, v1)
        
        result <- result[!is.na(result)]
        unique(result)

}

cleanText <- function(text) {
        
        text <- tolower(text)
        text <- gsub("[^ a-z']", "", text)
        text <- gsub("^\\s+|\\s+$", "", text)
        text <- gsub(" {2,}", " ", text)
        text
}


