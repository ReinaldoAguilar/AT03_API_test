class Father
	 @@money = 500
	def self.money
	 @@money
	end 	
end


class Child1 < Father
	
	def self.money
	@@money -= 100
	
	end 	
end
class Child2 < Father
	def self.money
	@@money -= 100
	end 	
end
class Child3 < Father
	def self.money
	@@money -= 100
	end 	
end

puts "The Farher's money : #{Father.money}"
Child1.money
Child2.money
Child3.money
puts "The Farher's money rest: #{Father.money}"
