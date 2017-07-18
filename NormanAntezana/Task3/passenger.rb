# Write 1 method that prints a passenger name ,a destination city and the price of ticket in dollars.
#     The name should be received from the user
# If no destination is defined the value by default should be CBBA.
#     The price of the ticket should be received by user, and the transformation to dollars should be returned from the method. It should be  float (E.g 150.25)
# Perform the calculation using variables, to return the value don’t use return word
# When you call the method, don’t use parenthesis
# After call the method don’t forget to print the value returned.

def passenger(name,destination_city="CBBA",price)
  dollar=convert_dollar price
  puts "Name :#{name} destination #{destination_city} price %.2f $"%dollar
  # puts name +": "+ destination_city+": "+dollar.to_s

end
def convert_dollar cant
  cant.to_f/7.8
end
passenger("pablo", "La paz",10)
passenger("reinaldo", 80)