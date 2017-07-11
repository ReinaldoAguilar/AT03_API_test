=begin
1.Take your previous script and change calculations for variables.
2.Add some line in the middle of your script that is referring to a variable that doesn’t exist. Run the file and please explain the error displayed.
=end

puts "I will now count my fruits:"

multiplicator = (100-50)*2
divisor = 5
puts "Bananas: #{multiplicator/divisor}"

puts "apples: #{((100 - 25) * (3 + 2)) % 4}"

# The error displayed show us that the local variable was not defined and it show as well
# Object (NameError) and the rest of the lines were not running.
puts "Variable does not exist: #{variable}"

puts "Now I will count  the potato"

a = 3 + 2 + 1 - 5 + 4
div = 4 + 6
valuemodule = 2
puts a % valuemodule
puts a % valuemodule - 1 / div
puts "Is it true that 10 - 5 < 1 + 2?"
puts (10 + 5) - 5 < (2 + 2)-1
puts "What is 10 + 5? It is #{3 * 5}"
puts "What is 5 - 7? It is #{(5 - 6) + (3 - 4)}"
