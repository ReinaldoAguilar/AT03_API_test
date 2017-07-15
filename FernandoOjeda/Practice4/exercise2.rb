=begin
1. Create a class with two methods​
method 1:​
  No arguments defined​
  Should ask to the user the number of elements in the array​
  According the value inserted ask for each value of the array and push it in a new array​
  Return the array​
method 2​
  Should receive 1 argument (the array returned in method 1)​
  should print the array​
=end

class Exercise2

  def methodOne
      puts "Insert the size of the array"
      a = gets.chomp.to_i
      b = []
      a.times do
        puts "Insert the element for the array"
        value = gets.to_i
        b.push value
      end
      return b
  end
  def array_methodOne(valueArray)
    print valueArray
  end
end

d = Exercise2.new
valueArray = d.methodOne
d.array_methodOne(valueArray)