# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}
setwd(file.path(.get_course_path(),"Data_management_and_basic_summaries_in_R","Introduction_to_three_most_common_functions_from_`tidyverse`_package"))

#temporary workaround ##########################
# print(dirname(rstudioapi::getActiveDocumentContext()$path))
# setwd("C://")
# setwd(file.Cpath(rstudioapi::getActiveProject(), "Data_management_and_basic_summaries_in_R","Introduction_to_three_most_common_functions_from_`tidyverse`_package"))

installed <- function() {
  message("You skipped the installation.")
}
ae <- read.csv('ae.csv')
drug_9NA <- read.csv('drug.csv')
base <- read.csv('base.csv')

base$Sex <- as.character(base$Sex)
base$Birth <- as.factor(base$Birth)
base$SUBJID <- as.numeric(base$SUBJID)

installed <- function() invisible(TRUE)