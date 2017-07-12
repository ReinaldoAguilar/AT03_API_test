=begin
Write a script inserting datas and convert them in Integers.
Write a script inserting datas and convert them in Float.
=end

# For this exercise a insert the following data: 12345
# And the result was 1234500 because the number was multiple by 100.
print "Give me a number: "
number1 = gets.chomp.to_i
bigger1 = number1 * 100
puts "A bigger number is #{bigger1}."

# In this example I put the following data: 1234string
# And the console show the result such as 123400
# So the string was converter in 0.
print "Give me a number: "
number2 = gets.chomp.to_i
bigger2 = number2 * 100
puts "A bigger number is #{bigger2}."

# In this case the data that I input was string12345
# And the result was 0.
print "Give me a number: "
number3 = gets.chomp.to_i
bigger3 = number3 * 100
puts "A bigger number is #{bigger3}."

# In this exercise the data that I insert was $%&*1234
# And the result was 0.
print "Give me a number: "
number4 = gets.chomp.to_i
bigger4 = number4 * 100
puts "A bigger number is #{bigger4}."

###################################################################

# For this exercise insert the data 12.454 and the result was 124.54
print "Give me a number: "
number5 = gets.chomp.to_f
bigger5 = number5 * 10.00
puts "A bigger number is #{bigger5}."

# For this exercise insert the data 12.345string and the result was 123.45
print "Give me a number: "
number5 = gets.chomp.to_f
bigger5 = number5 * 10.00
puts "A bigger number is #{bigger5}."

# For this exercise insert the data string12.345 and the result was 0.0
print "Give me a number: "
number5 = gets.chomp.to_f
bigger5 = number5 * 10.00
puts "A bigger number is #{bigger5}."