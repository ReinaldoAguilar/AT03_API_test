class Firts
	def initialize (radius)
		@radius = radius

	end

	def calculate_area
		@area = @radius *2*3.14

		puts "The area of this circle is #{@area}"
	end

	def calculate_perimeter
		@perimeter = @radius**2*3.14

		puts "The perimeter is of this circle is #{@perimeter}"
	end
end

puts "Introuce the radius of a circle"
radius = gets.chomp.to_f

f = Firts.new(radius).calculate_area
q = Firts.new(radius).calculate_perimeter


