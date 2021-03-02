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
  
  #####################################
  ###### Write your script here.#######
  #####################################
  # Be sure to save this script and type submit() in the console after you make 
  # your changes.
  
  ###### Return the output
  return(out)
}