# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

load(file.path(.get_course_path(), "coreme_week_06", "week_06", "data.rdata"))

if(!require(tibble)){
  install.packages("tibble")
  library(tibble)
}

if(!require(ggplot2)){
  install.packages("ggplot2")
  library(ggplot2)
}

if(!require(scales)){
  install.packages("scales")
  library(scales)
}


table_df <- function(data_vector) {
  # create the table, create the df and then order
  df <- as.data.frame(table(data_vector), stringsAsFactors=F)
  df <- df[order(df$Freq, decreasing = T), ]
  # return as value the df
  # just call the df or use return
  return(df)
}