class Calculate_Age
 def initialize(age)
 @age = age
 end

 def calculate
@minutes = @age *365 *24
puts "You are #{@minutes} minutes old"
 	 	
 	 end	 
puts "Hi How old are you?"
age = gets.chomp.to_i

me = Calculate_Age.new(age).calculate

end