class CelsiusToFahrenheit
  def celsius_fahrenheit(fahrenheit)
     @celsius = (5*(fahrenheit-32))/9
  end
  def fahrenheit_celsius(celsius)
     @fahrenheit = ((9* celsius)/5)+32
    return @fahrenheit
  end
end
grades = CelsiusToFahrenheit.new

puts grades.celsius_fahrenheit 100
puts grades.fahrenheit_celsius 100
