loadContextData <- function() {

        list(table4g = setkey(fread("table4g.txt", header = T, stringsAsFactors = F), key),
             table3g = setkey(fread("table3g.txt", header = T, stringsAsFactors = F), key),
             table2g = setkey(fread("table2g.txt", header = T, stringsAsFactors = F), key))
}
