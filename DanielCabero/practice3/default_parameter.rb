class DefaultParameter

  def priceTravel name, destination= "CBBA",price = 50.20
    puts " #{name}, #{destination}, #{price}"

  end

end

travel = DefaultParameter.new
puts "#{travel.priceTravel"tomas"}"
puts "#{travel.priceTravel"tomas","Lapaz"}"
puts "#{travel.priceTravel"tomas","sta cruz",100.50}"




