=begin
Write 1 method that prints a passenger name ,a destination city and the price
of ticket in dollars.
=end

def passenger(name, city = "CBBA", price)
  ticket = price * 7
  puts "The passenger names is #{name}, the city where the passenger come from is #{city} and the price of the ticket is #{ticket} dollars"
end

passenger "Susana", 150.25