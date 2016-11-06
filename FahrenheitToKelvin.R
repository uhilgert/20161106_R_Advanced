# Function to convert Fahrenheit to Kelvin

fah_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}
