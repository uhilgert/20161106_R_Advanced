# Function to convert "fah_to_celsius"

fah_to_celsius <- function(temp) {
  celsius <- (temp - 32) * (5/9)
  return(celsius)
}