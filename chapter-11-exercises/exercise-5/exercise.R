# Exercise 5: dplyr grouped operations

#install.packages("nycflights13")
# Install the `"nycflights13"` package. Load (`library()`) the package.
# You'll also need to load `dplyr`
#install.packages("nycflights13")  # should be done already
library("nycflights13")
library("dplyr")

# What was the average departure delay in each month?
# Save this as a data frame `dep_delay_by_month`
# Hint: you'll have to perform a grouping operation then summarizing your data
dep_delay_by_month <- flights %>%
  group_by(month) %>%
  summarize(delay = mean(dep_delay, na.rm = TRUE))

# Which month had the greatest average departure delay?
# July with 21 minutes 

# If your above data frame contains just two columns (e.g., "month", and "delay"
# in that order), you can create a scatterplot by passing that data frame to the
# `plot()` function


# To which destinations were the average arrival delays the highest?
# Hint: you'll have to perform a grouping operation then summarize your data
# You can use the `head()` function to view just the first few rows
avg_arr_delay <- flights %>%
  group_by(dest) %>%
  summarize(delay = mean(arr_delay, na.rm = TRUE)) %>%
  arrange(-delay) %>%
  head(1)


# You can look up these airports in the `airports` data frame!


# Which city was flown to with the highest average speed?
high_speed <- flights %>%
  group_by(dest) %>%
  mutate(speed = distance / (hour * 60 + minute)) %>%
  arrange(-speed) %>%
  head(1)
