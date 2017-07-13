=begin
Write 1 method that prints a passenger name ,a destination city and the price of ticket in dollars.
The name should be received from the user
If no destination is defined the value by default should be CBBA.
The price of the ticket should be received by user, and the transformation to dollars should be returned from the method. It should be  float (E.g 150.25)
Perform the calculation using variables, to return the value don’t use return word
When you call the method, don’t use parenthesis
After call the method don’t forget to print the value returned.
	

=end

def Passenger(name, price, destination ="CBBA")
	puts "The name: #{name}"
	puts "The destination: #{destination}"
	puts "The price in Dollar is: #{price/7} $us." 
	
end 

puts"Enter name"
name=gets.chomp.to_s 
puts"Enter price"
price=gets.chomp.to_i 
puts"Enter ciudad"
destination =gets.chomp.to_s 

puts (destination == "")?(Passenger name, price):(Passenger name, price,destination)