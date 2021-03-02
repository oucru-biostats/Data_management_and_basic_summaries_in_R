# Put custom tests in this file.
      
      # Uncommenting the following line of code will disable
      # auto-detection of new variables and thus prevent swirl from
      # executing every command twice, which can slow things down.
      
      # AUTO_DETECT_NEWVAR <- FALSE
      
      # However, this means that you should detect user-created
      # variables when appropriate. The answer test, creates_new_var()
      # can be used for for the purpose, but it also re-evaluates the
      # expression which the user entered, so care must be taken.

check.package <- function(package){
   invisible(if (requireNamespace(package)) TRUE else FALSE)
}

getState <- function(){
   # Whenever swirl is running, its callback is at the top of its call stack.
   # Swirl's state, named e, is stored in the environment of the callback.
   environment(sys.function(1))$e
}

# Get the value which a user either entered directly or was computed
# by the command he or she entered.
getVal <- function(){
   getState()$val
}


robust_value_check <- function(x){
   ans <- getState()$val
   if (isTRUE(ans %in% x)) return(TRUE)
   return(FALSE)
} 


check.loaded <- function(package){
   invisible(if (package %in% loadedNamespaces()) TRUE else FALSE)
}

save_csv <- function(object){
   ans <- getState()$val
   if (isTRUE(ans == 'Yes')) write.csv(object, file=file.choose())
   invisible(TRUE)
}

test.parse_to_date <- function(){
   try({
      parse_to_date.test <- get('parse_to_date', globalenv())
      date.in <- c('11/1/1989', '2/12/13', '01/31/1999')
      date.out <- parse_to_date.test(date.in, orders = 'mdy')
      date.out.correct <- as.Date(c('1989/11/1', '2013/2/12', '1999/01/31'))
      
      type.ok <- all(sapply(date.out, is.Date))
      value.ok <- identical(date.out, date.out.correct) 
      
      ok <- all(type.ok, value.ok)
   }, silent = TRUE)
   
   exists('ok') && isTRUE(ok)
}


test.get_day_info <- function(){
   try({
      get_day_info.test <- get('get_day_info', globalenv())
      date.in <- '06/12/1992'
      date.out <- get_day_info.test(date.in, 'dmy')
      
      ok <- all(date.out$weekdays == 'Sunday', date.out$wday == 1, date.out$day == 6, date.out$yday == 341)
   }, silent = TRUE)
   
   exists('ok') && isTRUE(ok)
}
