# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}


#temporary workaround ##########################
setwd(file.path(.get_course_path(),"Data_management_and_basic_summaries_in_R","Reading_in_data_from_SQLite_file"))

#load dataset needed
ae <- read.csv('ae.csv')
base <- read.csv('base.csv')
drug <- read.csv('drug.csv')

installed <- function() invisible(TRUE)