=begin
Write a script inserting datas and convert them in Float.
=end

# For this exercise insert the data 12.454 and the result was 12.454
print "Give me a number: "
number = gets.chomp.to_f
puts "The floating number is : #{number}."

# For this exercise insert the data 12.345string and the result was 123.45
print "Give me a number: "
number2 = gets.chomp.to_f
bigger2 = number2 * 10.00
puts "A bigger number is #{bigger2}."

# For this exercise insert the data string12.454 and the result was 0.0
n = 10
print "Give me a number: "
number3 = gets.chomp.to_f
puts "The floating number is : #{number3*n}."

# For this exercise insert the data $%^$^12.34 and the result was 50
# Because the number4 was 0 and this was plus 50.
print "Give me a number: "
number4 = gets.chomp.to_f
result = number4 + 50
puts "A bigger number is #{result}."

#####################################################################

# Convert Integer to String
number5 = 10
stringvalueint = number5.to_s
puts stringvalueint

#Convert Float to String
numberfloat = 15.5
stringvaluefloat = numberfloat.to_s
puts stringvaluefloat
