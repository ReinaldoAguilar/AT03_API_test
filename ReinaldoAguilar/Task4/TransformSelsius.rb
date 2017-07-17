=begin
Write 1 Methods that transform Celsius in Fahrenheit
	 Fahrenheit = (((9* Celsius ) /5) + 32)
This method should receive a Celsius value
Pickup any way of the return displayed.	

2. Write 1 Method that transform Fahrenheit in Celsius 
	 Celsius = (5*(Fahrenheit - 32))/9
This method should receive a Celsius value
Pickup any other way of the return displayed
Tips : use the correct format of number (int? float?)

=end

def transform_Celsius_InFahrenheit()
	puts"Insert  celsius"
    celsius = gets
	fahrenheit = (((9 * celsius.to_i) / 5) + 32)

	return fahrenheit
end 

def transform_Fahrenheit_InCelsius()
	puts"Insert  fahrenheit"
    fahrenheit = gets
	
	celcius = (5 * (fahrenheit.to_i - 32)) / 9
end 

puts "Resul in fahrenheit is: %s" %transform_Celsius_InFahrenheit()
puts "Resul in celsius is: %s" %transform_Fahrenheit_InCelsius()