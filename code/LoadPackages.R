LoadPackages <- function(){
  
  library(rmsfuns)
  
  corepacks <- c("tidyverse", "RcppRoll", "ggplot2", "lubridate",
                 "ggthemes", "purrr", "tbl2xts", "xts", "MTS", "devtools", "rugarch", "forecast", "PerformanceAnalytics", "xtable")
  
  load_pkg(corepacks)
  
}

