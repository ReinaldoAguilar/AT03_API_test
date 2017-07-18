=begin
Create a new script using the same class created before but now :
 Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.
=end

  def accessor(color)
    @color= color
    puts "The color of the car is now #{@color}"
  end
  def colorCar()
    year = "1985"
    puts "The year of the car is #{year}"
  end

  puts accessor("black")
  puts colorCar

