# Exercise 1: practice with basic R syntax

# Create a variable `hometown` that stores the city in which you were born
hometown <- "Lynnwood"

# Assign your name to the variable `my_name`
my_name <- "Johnson"

# Assign your height (in inches) to a variable `my_height`
my_height <- 65

# Create a variable `puppies` equal to the number of puppies you'd like to have
puppies <- 0

# Create a variable `puppy_price`, which is how much you think a puppy costs
puppy_price <- 600

# Create a variable `total_cost` that has the total cost of all of your puppies
total_cost <- function(puppy_price, puppies) {
  return(puppy_price * puppies)
}

# Create a boolean variable `too_expensive`, set to TRUE if the cost is greater 
# than $1,000
too_expensive <- ifelse(total_cost < 1000, "TRUE", "False")

# Create a variable `max_puppies`, which is the number of puppies you can 
# afford for $1,000
max_puppies <- function(puppy_price) {
  return(1000 / puppy_price)
}