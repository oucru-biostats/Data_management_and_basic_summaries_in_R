get_day_info <- function(dateString, order){
  ###### Load necessary libraries
  library(lubridate)
  
  ###### Exception handlers
  if (missing(dateString) | missing(order)) stop('All parameters are mandatory!')
  if (!is.character(dateString)) stop('dayString should be of type character()')
  
  #########################
  ## Your code goes here ##
  #########################
  # Be sure to save this script and type submit() in the console after you make 
  # your changes.
  
  ###### Return the output
  return(list(day=day, yday=yday, wday=wday, weekdays=weekdays))
}