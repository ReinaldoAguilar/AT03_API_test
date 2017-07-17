class Passenger
  def ticket(name,price,destination="CBBA")
    @name= name
    @destination= destination
    @price = price
    puts "Enjoy your travel to #{destination} Mr. #{name} the price of your tikect is #{price} dollars"
  end
  def conver_to_bolivianos
    @bols= @price*6.96
  end
end
passanger = gets.chomp
pass = Passenger.new
pass.ticket passanger,123
puts "The price in Bolivianos is #{pass.conver_to_bolivianos}"