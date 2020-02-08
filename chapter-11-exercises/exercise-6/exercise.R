# Exercise 6: dplyr join operations

# Install the `"nycflights13"` package. Load (`library()`) the package.
# You'll also need to load `dplyr`
#install.packages("nycflights13")  # should be done already
library("nycflights13")
library("dplyr")

# Create a dataframe of the average arrival delays for each _destination_, then 
# use `left_join()` to join on the "airports" dataframe, which has the airport
# information
# Which airport had the largest average arrival delay?
average_arrival_delays <- flights %>%
  mutate(avg_delay = mean(arr_delay))
left_join(average_arrival_delays, airports, by = c("dest" = "name"))

# Create a dataframe of the average arrival delay for each _airline_, then use
# `left_join()` to join on the "airlines" dataframe
# Which airline had the smallest average arrival delay?
average_airline <- flights %>%
  group_by(carrier) %>%
  mutate(avg_delay = mean(arr_delay))
left_join(average_airline, airports, by = c("carrier" = "faa"))
