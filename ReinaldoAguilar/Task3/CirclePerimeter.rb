class CirclePerimeter
	def cal_PiWithRadius(radius)
		radiousArea = radius.to_i * Math::PI
		
	end
	def area_circle
		puts "Enter a data radius"
		radius = gets 
		
		resultArea = 2 * cal_PiWithRadius(radius)
		puts "The area is %.2f" % resultArea
		
	end
	def perimeter_circle
		puts "Enter a data radius"
		radius = gets
        
        resulPerimeter = radius.to_i * cal_PiWithRadius(radius)
		puts "The Perimeter is %.2f" % resulPerimeter
		
	end
end

a = CirclePerimeter.new
a.area_circle
a.perimeter_circle