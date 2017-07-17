=begin
Create a class called MyCar
1 When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car.
2 Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well.
=end

class MyCar
  def initialize(year, color , model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end
  def speed_up(number)
    @speed+=number
    puts "You accelerate to #{@speed} mph"
  end
  def brake(number)
    @speed-=number
    puts "You brake to #{@speed} mph"
  end
  def shutOff(number)
    @speed = number
    puts "You shut the car off to #{@speed} mph"
  end
end

d = MyCar.new(1985, "back", 85)
d.speed_up(50)
d.brake(20)
d.shutOff(0)