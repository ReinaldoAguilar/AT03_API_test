class Exercise3

  #the initialize of the Exercise3 or the circle.
  def initialize(radius)
    @radius = radius
  end

  #the calculate og the circle area.
  #use the PI of the Math class.
  def area
    Math::PI*@radius*2
  end
  # the calculate of the circle perimeter.
  def perimeter
    Math::PI*(@radius**2)
  end
end
#the input the variable radius.
puts "Write the radius"
radius = gets.to_i
areaCircle = Exercise3.new(radius)
perimeterCircle = Exercise3.new(radius)

#the print of the circle area and area perimeter.
puts "the circle area is : #{areaCircle.area}"
puts "the circle perimeter is : #{areaCircle.perimeter}"


