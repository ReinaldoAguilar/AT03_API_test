=begin
1. Create a class with two methods​
method 1 :​
​
No arguments defined​
Should create an array with only numbers ​
According the value inserted ask for each value of the array and push it in a new array​
Should create an alphabetical array​
Should create a mixed array (numeral an alphabetical )​
Return the 3 arrays​
​
method 2​
Should receive 2 arguments (2 arrays)​
should print only the elements in common between the 2 arrays received​
should print the first element of both arrays​
should print the last element of both arrays​
​
​
Method 3 ​
Should receive 2 arguments (2 arrays)​
Should print the result of join both arrays but before join  need to extract :​
-	the first element of the first array​
-	the last element of the second array​
Create an array with both elements extracted, return this array​
​
Method 4​
Should receive 1 arguments(the array from method 3)​
Should print the array received​
​
=end

class Exercise3

  def methodOne
    puts "Insert the size for the first array"
    a = gets.chomp.to_i
    puts "Insert the size for the second array"
    b = gets.chomp.to_i
    c = []
    g = []
    h = []
    a.times do
      puts "Insert the element for the first array"
      value = gets.to_i
      c.push value
    end
    b.times do
      puts "Insert the element for the second array"
      stringvalue = gets
      g.push stringvalue
    end
    print h.push c + g
    return c, g
  end
  def methodTwo(vOne, vTwo)
    print vOne & vTwo
    puts vOne.first
    puts vTwo.first
    puts vOne.last
    puts vTwo.last
  end
  def methodThree(vaOne, vaTwo)
    puts vaOne.firs
    puts vaTwo.last
    print vaOne + vaTwo
    i = vaOne + vaTwo
    return i
  end
  def methodFour(valOne)
    print valOne
  end
end

d = Exercise3.new
valueOne , valueTwo = d.methodOne
d.methodTwo(valueOne, valueTwo)
f = d.methodThree(valueOne, valueTwo)
d.methodFour(f)