puts "What is your name?"
name = gets.chomp()
puts "Hi #{name} How old are you?"
age= gets.chomp.to_i
puts "Wellcome to Ruby #{name} #{age} old."
puts "Ok! #{name} Give me a number"
number= gets.chomp.to_i
bigger= number *100
puts "#{bigger} is bigger than #{number}"

 puts "   This is a test of strip method".lstrip



puts "Lest try this #{name}. How tall are you?"
tall = gets.chomp.to_f/3,28084

puts "Great you are #{tall}  fts  tall"

puts "How far do you live? in kilometers"
far= gets.chomp.to_f/0.621371
puts"#{far} miles is the distance to your house"


