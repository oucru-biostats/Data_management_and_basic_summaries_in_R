# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

default.par <- par()

check.package <- function(package) requireNamespace(package, quietly = TRUE)
# setwd(file.path(rstudioapi::getActiveProject(), "Data_management_and_basic_summaries_in_R","Data_management_and_frequent_tasks"))
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

setwd(file.path(.get_course_path(),"Data_management_and_basic_summaries_in_R","Data_management_and_frequent_tasks"))

if(!check.package('imager')) install.packages('imager')
# if(!check.package('RCurl')) install.packages('RCurl')
# if(!check.package('png')) install.packages('png')
# if(!check.package('jpeg')) install.packages('jpeg')
# getImg <- function(txt) {
#   raw <- base64Decode(txt, mode="raw")
#   if (all(as.raw(c(0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a))==raw[1:8])) { # it's a png...
#     img <- png::readPNG(raw)
#     transparent <- img[,,4] == 0
#     img <- as.raster(img[,,1:3])
#     img[transparent] <- NA
#   } else if (all(as.raw(c(0xff, 0xd8, 0xff, 0xd9))==raw[c(1:2, length(raw)-(1:0))])) { # it's a jpeg...
#     img <- jpeg::readJPEG(raw)
#   } else stop("No Image!")
#   return(img)
# }

load('pivot_data.Rdata')
drug <- read.csv('drug.csv')
base <- read.csv('base.csv')
drug_9NA <- read.csv('drug_9NA.csv')
ae <- read.csv('ae.csv')

installed <- function(){
  invisible(TRUE)
}

