calculate_age <- function(birth_year) {
  current_year <- as.numeric(format(Sys.Date(), "%Y"))  # Get current year
  approximate_age <- current_year - birth_year  # Calculate age
  return(approximate_age)
}
birth_years <- c(1980, 1975, 1990, 1985)
df <- data.frame(birthyear = birth_years)


library (dplyr)
df <- df %>%
  mutate(age = calculate_age(birthyear))
print (df)

#next quiz
birth_dates <- c("1990-05-15", "1985-10-20", "1978-03-25", "1995-08-12")
birth_dates <- data.frame(birthdate = birth_dates)

get_weekday <- function(date_string) {
  weekdays(as.Date(date_string))
}
df <- birth_dates %>%
  mutate(weekday_of_birth = get_weekday(birthdate))
print(birth_dates)
  
5+5
4+4
