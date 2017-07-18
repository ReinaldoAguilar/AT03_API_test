=begin
Write 1 Methods that transform Celsius in Fahrenheit
Write 1 Method that transform Fahrenheit in Celsius
=end

def convert(celsius)
  fahrenheit = (((9 * celsius)/5) + 32)
  return fahrenheit
end

puts convert(15)


# Write 1 Method that transform Fahrenheit in Celsius

def convert(fahrenheit)
  celsius = (5 * (fahrenheit - 32))/9
end

puts convert(15.5)