
class MyCar

  attr_accessor :color
  attr_reader :model, :year
  def initialize(year, model, color)
    @year, @model, @color = year, model, color
    @speed =0
  end

  def speed_up(speed)
    @speed=speed
    puts "Now the car is runing at #{@speed} k/h"
  end

  def speed_down(speed)
    @speed = speed
    puts "Now the car is runing at #{@speed} k/h"
  end

  def stop_car
    @speed = 0
    puts "Now the car is stoped"
  end


end

car = MyCar.new(2016, "celerio", "blue")

puts"Your car is an #{car.model} #{car.color} #{car.year}"
car.speed_up 100
car.speed_down 50
car.stop_car

car.color = "red"

puts "now your car is an #{car.model} #{car.color} #{car.year}"

