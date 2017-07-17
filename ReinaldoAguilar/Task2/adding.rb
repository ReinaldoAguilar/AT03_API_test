=begin
 OK 3.- Create a new script adding at least one case for each one of the arithmetic, 
  comparison, assignment and logical operators, print them and also print the risult obtained
  1.- add variablis with numbers and strings. 
  2.- Print them as a sentencis (like in the previous case)
  3.- Add some sentence that perform some calculation using variable namis. 
	  
=end
a = 2
b = 3
c = 40.5
d = "This is a word with string"
#Arithmetic operators 

puts "the value of a ** c  : #{b ** a}" 
puts d
 
puts "a != b: #{a != b}" 
puts "a > b: #{a > b}" 
puts "b < c: #{b < c}"  
puts "a <=> c: #{a <=> c}" 
puts "a === c: #{a === c}" 
puts "a.eql?c: #{a.eql?c}" 
puts "a.equal?c: #{a.equal?c}" 

	
puts "the value of e is: #{e = 3}"
puts "the value of a is: #{a} increas the value of a on 1 is: #{a += 1}"
puts "the value of a is: #{a} decrement the value  of a on 2 is: #{a -= 2}"
puts "the value of a is: #{a} multiplic  the value  of a on 2 is: #{a *= 2}"
puts "the value of a is: #{a} dividing the value  of a on 2 is: #{a /= 2}"
puts "the value of a is: #{a} module the value  of a on 2 is: #{a %= 2}"
puts "the value of a is: #{a} pow the value  of a on 2 is: #{a **= 2}"

puts "the value of a and b is: #{a and b}"
puts "the value of a or b is: #{a or b}"
puts "the value of a && b is: #{a && b}"
puts "the value of a || b is: #{a || b}"
puts "the value of a ! b is: #{!(b &&c)}"
puts "the value of a && b is: #{not(a && b)}"