class Temperate

  def calcCessius temperature
    (5*(temperature-32))/9
  end

  def calcFahreheit temperature
    (((9*temperature)/5)+32)
  end
end

temperatureNow=Temperate.new
puts "Input the temperature in Fahreheit to calculate:"
number=gets.to_i
puts "The temperature #{number} in Celsius is #{temperatureNow.calcCessius number}"

puts "Input the temperature in Celsius to calculate:"
number2 = gets.to_i
puts "The temperature #{number2} in Celsius is #{temperatureNow.calcFahreheit number2}"