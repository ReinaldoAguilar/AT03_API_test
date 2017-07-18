class Car

  #defined the atributes for the gets and setters.
  # the atributes to changes is the color and velocity.
  attr_accessor :color, :velocity
  # the atributes allow read are the year and modelo.
  attr_reader :year ,:modelo

  def initialize color,year,modelo
    @color=color
    @year= year
    @modelo= modelo
    @velocity =0
  end
  # the method for the change the velocity.
  def spped number
    @velocity +=number
    puts "You accelerator to #{@velocity}"
  end

end
car=Car.new "blanco","1999","corolla"
# this used the get of the all atributes.
puts "the car is #{car.color}, is #{car.year} and #{car.modelo} modelo"
puts "With another color you would paint it"
newColor = gets.to_s
#this used the set for change the atribute.
puts "the color is #{car.color =newColor}"
car.spped 50