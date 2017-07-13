# Write
# 1 Methods that transform Celsius in Fahrenheit
# Fahrenheit = (((9* Celsius ) /5) + 32)
# This method should receive a Celsius value
# Pickup any way of the return displayed.
# 2. Write 1 Method that transform Fahrenheit in Celsius
# Celsius = (5*(Fahrenheit - 32))/9
# This method should receive a Celsius value
# Pickup any other way of the return displayed
# Tips : use the correct format of number (int? float?)

def transform_celsius number
  ((number.to_f*9)/5)+32
end

def transform_fahrenheit number
   return (5*(number.to_f-32))/9
end

numberA=20
numberB=68
puts "The convertion #{numberA} Celsius to Fahrenheit is #{transform_celsius(numberA)}"
puts "The convertion #{numberB} Fahrenheit to Celsius is #{transform_fahrenheit numberB}"

