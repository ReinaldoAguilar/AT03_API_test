class Figure

  def initialize(radio, pi)
    @radio = radio
    @pi = pi
  end
  def calculateAreaCircle()
       area = @radio * 2 * @pi
       puts area
  end
  def calculatePerimeterCircle()
      perimeter = @radio * @radio * @pi
      puts perimeter
  end
end

d = Figure.new(10, 5)
d.calculateAreaCircle
d.calculatePerimeterCircle