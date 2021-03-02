get_day_info <- function(dateString, order){
  ###### Load necessary libraries
  library(lubridate)
  
  ###### Exception handlers
  if (missing(dateString) | missing(order)) stop('All parameters are mandatory!')
  if (!is.character(dateString)) stop('dayString should be of type character()')
  
  ###### Parsing the dayString
  date <- parse_date_time(dateString, orders = order)
  
  ###### Get necessary values
  day <- day(date)
  yday <- yday(date)
  wday <- wday(date)
  weekdays <- weekdays(date)
  
  ###### Return the output
  return(list(day=day, yday=yday, wday=wday, weekdays=weekdays))
}