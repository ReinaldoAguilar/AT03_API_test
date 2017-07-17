class Class1

  def calculate_Area(radius)
    puts radius ** 2 * Math::PI
  end
  def calculate_Perimeter(radius)
    puts radius * 2 * Math::PI
  end
end
Class1.new.calculate_Area(3)

Class1.new.calculate_Perimeter(3)