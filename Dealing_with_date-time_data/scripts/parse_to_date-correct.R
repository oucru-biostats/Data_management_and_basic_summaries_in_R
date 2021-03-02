parse_to_date <- function(x, orders){
  # x is a character vector to be parsed.
  # orders is a combination of order candidates to be pass to the actual function
  # this function will take x as an input, parsing that using lubridate::parse_date_time, and convert the result to type Date.
  
  ###### Load the library
  library(tidyr)
  library(lubridate)
  
  ###### Exception handler that will cover the case where no order is declared.
  if (missing(orders)) stop('Orders should be provided!')
  
  ###### Exception handler that will cover the case where no x is declared.
  if (missing(x)) stop('x should be provided!')
  
  ###### Parsing the vector via parse_date_time
  x.parsed <- parse_date_time(x, orders=orders) 
  # you don't need to provide time-zone since it is, in fact, is going to be removed.
  # you don't have to provide locale either since there is no Month name within the vector provided.
  
  ###### Convert the output back to Date
  out <- as.Date(x.parsed)
  
  ###### Return the output
  return(out)
}