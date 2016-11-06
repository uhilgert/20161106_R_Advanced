# Arithmetic calcs

2 + 3

# assigning variables

x <- 3

x = 3

# Plotting

x <- c(1,2,3)
y <- c(3,4,1)
plot(x,y)

# cLASSES OF VARIABLES

class(x)
length(x)
class(y)
length(y)


# strings
str <- "My first string"
class(str)
length(str)

"this is my second string" -> str2
str2

# clear history
rm(list = ls())

# functions

?mean
?sd
?max

# total function
# 3 components:
# 1: function name
# 2: funtion statement
# 3: body
# 4: return statment (opt.)

my_sum <- function(input_1, input_2){
  tot = input_1 + input_2
  return(tot)  # return is optional
}
input_1 = 3
input_2 = 4
input_1 + input_2

my_sum(input_1, input_2)

my_sum(input_1=1, input_2)

# Native functions in R

sum(1,4)
sum(input_1, input_2)

# Ex: Function to convert Fahrenheit to Kelvin

fah_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}

temp=32

fah_to_kelvin(32)

fah_to_kelvin(temp=32)

rm(list = ls())

# Function to convert Kelvin to Celsius

K_to_C <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

temp=0

K_to_C(0)

## Exerxises
# Function to convert "fah_to_celsius"

fah_to_celsius <- function(temp) {
  celsius <- (temp - 32) * (5/9)
  return(celsius)
}

temp=32

fah_to_celsius(32)


# Exercise 2
best_practice <- c("write", "programs", "for", "people", "not", "computers")
asterix <- "***"

# write funtion "fence" that takes 2 arguments/variables and
# a new vector like "asterix" at the beginning and end to
# denote exceptional output

fence <- c(variable_1, variable_2)


# Using a real dataset

dir.create("data")
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder.csv")
?dir.create

dim(data/gapminder.csv)


ls()

dat <- read.csv("data/gapminder.csv", header=TRUE) # says that my dataset has headers and that I want to inlcude the header = DEFAULT
head(dat) # (inspect first few lines)
summary(dat) # summary description for data in "dat"
dim(dat) # returns types of data
str(dat) # returns structure of dataframe

# write function "analyze" that accepts "country" as an argument and
# returns mean, min and max LifeExp  for that country 

country_name <- subset(dat, dat$country == "Uganda")
head(country_name)
summary(country_name)

# Calculate mean, min and max of lifexp

mean(country_name[,5])
max(country_name[,5])
min(country_name[,5])

# Function

analyze <- function(countr) {
  country_name <- subset(dat, dat$country == countr)
  print(mean(country_name[,5]))
  print(max(country_name[,5]))
  print(min(country_name[,5]))
#  return(country_name)
}
analyze("Uganda")



analyze <- function(countr) {
  country_name <- subset(dat, dat$country == countr)
  print(mean(country_name$lifeExp))
  print(max(country_name$lifeExp))
  print(min(country_name$lifeExp))
  out <- c("Mean_le" = mean(country_name$lifeExp), "Max_le" = max(country_name$lifeExp), "Min_le" = min(country_name$lifeExp))
  print(out)
    #  return(country_name)
}
analyze("Albania")

analyze("Uganda")

analyze <- function(countr) {
  country_name <- subset(dat, dat$country == countr)
#  print(countr)
  print(mean(country_name$lifeExp))
  print(max(country_name$lifeExp))
  print(min(country_name$lifeExp))
  out <- c( #"Country" = countr,
    "Mean_le" = mean(country_name$lifeExp), "Max_le" = max(country_name$lifeExp), "Min_le" = min(country_name$lifeExp))
  print(out)
  #  return(country_name)
}
analyze(c("Albania", "Uganda"))


analyze <- function(countr) {
  country_name <- subset(dat, dat$country == countr)
  #  print(countr)
  print(mean(country_name$lifeExp))
  print(max(country_name$lifeExp))
  print(min(country_name$lifeExp))
  out <- c( #"Country" = countr,
    "Mean_le" = mean(country_name$lifeExp), "Max_le" = max(country_name$lifeExp), "Min_le" = min(country_name$lifeExp))
  print(out)
  plot(country_name$year, country_name$lifeExp, xlab="Year", ylab="Life Expectancy")
    #  return(country_name)
}
analyze(c(
  "Uganda",
  "Albania"))


#Something is wrong here
#analyze <- function(cont) {
#  continent_name <- subset(dat, dat$continent == cont)
#  #  print(cont)
#  print(mean(continent_name$lifeExp))
#  print(max(continent_name$lifeExp))
#  print(min(continent_name$lifeExp))
#  out <- c( #"Continent" = cont,
#    "Mean_le" = mean(continent_name$lifeExp), "Max_le" = max(continent_name$lifeExp), "Min_le" = min(continent_name$lifeExp))
#  print(out)
#  plot(continent_name$year, continent_name$lifeExp, xlab="Year", ylab="Life Expectancy")
#  #  return(continent_name)
#}
#analyze(c(
# "Europe",
#""Africa))

# continent_name <- subset(dat, dat$continent == "Europe")
# head(continent_name)
# summary(continent_name)

# Working on loops - for_loop

best_practice

best_practice_fun <- function(some_argument) {
  print(some_argument[1])
  print(some_argument[2])
  print(some_argument[3])
  print(some_argument[4])
  print(some_argument[5])
  print(some_argument[6])
}

best_practice_fun(best_practice)


# Use loops to limit repetitive work, here: for-loop

for (w in best_practice) {
  print(w)
}

best_practice_fun02 <- function(some_argument) {
  for(w in some_argument) {
    print(w)
  }
}

best_practice_fun02(best_practice)

# Exercise: Generate file "gapminder_52_97" that contains all data for year "1952" and "1997"
# Exercise: Generate file "gapminder_66_07" that contains all data for year "1966" and "2007"
# Hint: utilize 'subset' with '&' and for loops
?subset

# This works
# gapminder_52_97 <- subset(dat, dat$year == c("1952", "1997"))
# # head(gapminder_52_97)
# summary(gapminder_52_97)

#This is what Upendra used
gapminder_52_97_02 <- subset(dat, dat$year == 1952 | dat$year == 1997)
# head(gapminder_52_97_02)
# summary(gapminder_52_97_02)

gapminder_67_07_02 <- subset(dat, dat$year == 1967 | dat$year == 2007)

write.csv(file = "data/gapminder_52_97_02.csv", gapminder_52_97_02)
write.csv(file = "data/gapminder_67_07_02.csv", gapminder_67_07_02)

#
list.files(path = "data", pattern = ".csv", full.names = TRUE)

#
filenames <- list.files(path = "data", pattern = ".csv", full.names = TRUE)

#
for (f in filenames) {
  print(f)
}

# Use function written earlier (Row #153) to print out the
# results from multiple data frames

