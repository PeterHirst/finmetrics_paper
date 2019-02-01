WeeklyReturnFunction <- function(data){
  
  df <-
    data %>% arrange(date, Ticker) %>% group_by(Period, Ticker) %>% 
    filter(format(date, "%a") == "Wed") %>% 
    mutate(Weekly_Return = Value / lag(Value) - 1) %>% 
    mutate(Weekly_Return = coalesce(Weekly_Return, 0)) %>%  # Set NA to Zero.
    ungroup()
  
  df
  
}