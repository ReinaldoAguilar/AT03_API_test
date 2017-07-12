print "Give me a number: "
number = gets.chomp.to_f
bigger = number * 5.5
puts "#{number} multiply for 5.5 is equals to #{bigger} float"
puts bigger.to_f
=begin
Consider to :
Insert at least 4 different types of string
(number, strings with number, number with string, etc)and print them as floating number.
=end

# work with number (8 result 44.0)
# string with number the answer is 0(ho10 result 0.0)
# number with string, give the answer with the number (12ss result 66.0 )
# number with number and string and number, only work with first number (1g2g result 5.5)
# number with blank space only work with the first number( 1 3 2 result 5.5)
# number with dot(.) and number work ( 2.2 result 12.100000000000001)
# number with comma(,) and number ignore the number nest to comma ( 2.2 result 11.0)


