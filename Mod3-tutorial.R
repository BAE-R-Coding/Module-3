#module 3 tutorial
#coder: Justine Neville
#purpose: to learn the basics of coding in R Studio

#clear workspace
rm(list=ls())

#install packages
#install.packages("tidyverse")
#load libraries
library(tidyverse)

# section label -----------------------------------------------------------

parameter <-3
parameter
print(parameter)
view(parameter)
#object manipulation -----
temp_F <- 90
temp_C <-(temp_F - 32) *5/9
temp_C
temp_F<-70
temp_F <- temp_F-10
temp_F<-temp_F-65

#functions ----
round(7.777, digits = 1)
round(7.777, digits = 0)
# We can also define an object, and apply round to the object:
z <- 10.08509472
round(z, digits = 3)
# The output of round() can be assigned to a new object
z_rounded <- round(z, digits = 3)
z_rounded

k <- 3.56789
ceiling(k) # rounds up to the next-highest integer
floor(k)   # rounds down to the next-lowest integer

# Calculate the natural log of 1
log(1)
# Assign the log-10 of x to y, where x has a value of 400
x <- 400
y <- log10(x)
y

#creating vectors ----
# Integer vectors - to specify that a value is an integer, it should be followed by L:
cotton_yield_int <- c(925L, 970L, 983L, 940L, 959L, 933L)
julian_day <- c(20L, 36L, 60L, 82L, 87L, 121L, 150L, 202L, 261L, 289L, 310L, 344L, 360L)
# Double vectors:
cotton_yield_dbl <- c(925, 970, 983, 940, 959, 933)
dissolved_oxygen <- c(8.3, 7.88, 6.21, 6.0, 6.57, 6.89, 7.3, 7.4, 8.21, 9.1)
water_temp <- c(30.0, 31.3, 29.02, 30.667, 27.90)
# Character vectors:
field_ids <- c("field_1", "field_2", "field_3", "field_4", "field_5", "field_6")
dna_bases <- c("ACCG", "GCAT", "TAGG")




#Vectors and functions ----
x <- c(1, 2, 3)
y <- c(0, 1, 2)
z <- 1:10

# Multiply x by 2
x * 2

# Square each element in y
y ^ 2

# Multiply x by y
x * y

# Square the product of 3 and the natural log ofx
(3 * log(x)) ^ 2 # Note that the parantheses are applied to indicate order of operations

# Add y and z
y + z

y_extended <- c(y, rep(0, times = 7))
y_extended
length(y_extended)
y_extended + z
#functions with vectors ----
observations_field1 <- c(55.5, 60.2, 70.1, 56.8, 90.2, 50.5, 52.4, 62.3, 55.3, 61.4, 57.9, 53.1)
observations_field2 <- observations_field1 * 0.1
t.test(observations_field1, observations_field2, alternative = "two.sided", paired = TRUE)
#creating dataframes ----
# Option 1: create vector objects before constructing a data.frame
names <- c("Great Atlantic Hurricane",
           "Hazel",
           "Connie",
           "Ione",
           "Helene",
           "Donna",
           "Diana",
           "Emily",
           "Fran")
# Note this coding style! Whenever you enter a comma to separate function arguments, you can hit enter/return to put the subsequent argument on a new line. RStudio will automatically indent. Although using this style results in your code taking up more space, it is often much easier to find small errors with this style since the text isn't crammed together.

cat <- c(3, 4, 3, 3, 3, 3, 3, 3, 3)

month <- c("Sep", "Oct", "Aug", "Sep", 
           "Sep", "Sep", "Sep", "Aug", "Sep")
# Note You can hit enter/return after any comma

year <- c(1944, 1954, 1955, 1955, 1958, 1960, 1984, 1993, 1996)

data.frame(hurricane = names, 
           category = cat,
           landfall_month = month, 
           landfall_year = year) 
# Note that snake_case is also recommended for column headers!

nc_hurricanes<- data.frame(huricane = names,
                           category = cat,
                           landfall_month = month,
                           landfall_year=year)
str(nc_hurricanes)
view(nc_hurricanes)