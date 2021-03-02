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


robust_value_check <- function(x){
  ans <- getState()$val
  if (isTRUE(ans %in% x)) return(TRUE)
  return(FALSE)
} 

# Get the swirl state
getState <- function(){
  # Whenever swirl is running, its callback is at the top of its call stack.
  # Swirl's state, named e, is stored in the environment of the callback.
  environment(sys.function(1))$e
}

site_visit_2 <- function(site){
  selection <- getState()$val
  if (selection == 'Yes') utils::browseURL(site)
  TRUE
}





