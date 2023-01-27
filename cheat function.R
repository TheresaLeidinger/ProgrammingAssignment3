cheat <- function(question_no){
  if(question_no == 1){
    print("library(truncnorm)
    exam_grades <- rtruncnorm(50, 0, 10, 8.24, 1.25)
    hist(exam_grades)")
  }
  if(question_no == 2){
    print("schipol_data <- read.csv(url('https://bit.ly/3GLVQ86'))
    schipol_temp_time <- schipol_data[, c(2, 61)]
    plot(schipol_temp_time)
    ggplot(schipol_temp_time, aes(x = DATE, y = TMAX)) +
    geom_point()")
  }
  if(question_no == 3){
    answer_3 <- "library(titanic)
    library(ggplot2)
    how_did_it_go <- ifelse(titanic_train[, 2] == 0, 'dead', 'alive')
    titanic_plot <- ggplot(titanic_train,
    aes(x = Sex, fill = factor(how_did_it_go, levels = c('dead', 'alive')))) +
    geom_bar(stat = 'count') +
    scale_fill_discrete(name = 'How did it go?')"
    paste(answer_3)
  }
}