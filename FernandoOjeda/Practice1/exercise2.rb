=begin
3.Create a new script adding at least one case for each one of the arithmetic, comparison, assignment and logical operators,
print them and also print the result obtained.
=end

# add variables with numbers and strings.

var1 = 50
var2 = 100
var3 = 15.52
var4 = 10.45
var5 = 10
var6 = 50
var7 = 3
var8 = "This is a example for the string variable"

# Print them as a sentences (like in the previous case)

puts "#{var8}"
puts "The sum of var1 and var2 is: #{var1 + var2}"
puts "The following operation give as the next result: #{(var3 * var4) + (var1 * var2)}"
puts "#{var8}: #{var4*var1}"
puts "The var1 is iguals to var6: #{var1 == var6}"
puts "The var2 is different to var3: #{var2 != var3} "
puts "The var3 is major to var4: #{var3 > var4}"
puts "The var7 is minorto var5: #{var7 < var5}"
puts "The var1 is >= to var6: #{var1 >= var6}"
puts "The var5 is <= to var4: #{var5 <= var4}"
puts "The result of var1 <==> var7 is: #{var1 <=> var7}"
puts " var1.equsl?var6: #{var1.equal?var6}"

#Add some sentence that perform some calculation using variable names.

puts "The result of var1 && var2 is: #{var1 && var2}"
puts "The result of var5 || var6 is: #{var5 || var6}"
puts "The result of var1 and var2 is: #{var1 and var2}"
puts "The result of var5 or var6 is: #{var5 or var6}"
puts "The result of var5 ! var6 is: #{!(var5 && var6)}"
puts "The result of var5 && var6 is: #{not(var5 && var6)}"