# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}
setwd(file.path(.get_course_path(),"Data_management_and_basic_summaries_in_R","Dealing_with_date-time_data"))
# setwd(file.path(rstudioapi::getActiveProject(), "Data_management_and_basic_summaries_in_R","Dealing_with_date-time_data"))
rm(list=ls())
library(tidyverse)

base <- read.csv('base.csv', stringsAsFactors = FALSE)
t1 <- as.Date('2019/2/1', format = '%Y/%m/%d')
t2 <- as.Date('2018/12/6', format = '%Y/%m/%d')

installed <- function() invisible(TRUE)