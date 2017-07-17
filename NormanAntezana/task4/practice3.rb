#
# Practice
#
# 1. Create a class with two methods
# method 1 :
#
#     No arguments defined
# Should create an array with only numbers
# According the value inserted ask for each value of the array and push it in a new array
# Should create an alphabetical array
# Should create a mixed array (numeral an alphabetical )
# Return the 3 arrays
#
# method 2
# Should receive 2 arguments (2 arrays)
# should print only the elements in common between the 2 arrays received
# should print the first element of both arrays
# should print the last element of both arrays
#
# Method 3
# Should receive 2 arguments (2 arrays)
# Should print the result of join both arrays but before join  need to extract :
#     -	the first element of the first array
# -	the last element of the second array
# Create an array with both elements extracted, return this array
#
# Method 4
# Should receive 1 arguments(the array from method 3)
# Should print the array received
#
# 2. Instance the class and call to each method in order to interact with them.
# Please don’t use instanced, class or global variables. All actions should be performed calling the class and not inside the class
#



class Practice3
  def create
    print "number of elements "
    a=gets.to_i
    b=[]
    c=[]

    a.times do
      print "input the value number "
      b.push gets.chomp.to_i
      print "input the value alfabetical "
      c.push gets.chomp.to_s
    end
    d=b+c
    return b,c,d
  end
  def print_common arrayA, arrayB
    print arrayA&arrayB
    print arrayA.first +":"+arrayB.first
    print arrayA.last +":"+arrayB.last
  end
  def join_array arrayA, arrayB
    first_element=arrayA.first
    arrayA.delete(arrayA.first)
    last_element=arrayB.pop
    print arrayA+arrayB
    c=[first_element,last_element]
    return c
  end
  def print_array array
    print array
  end
end

value=Practice3.new
array_number,array_alfabetical,array_mix=value.create

print array_number
print array_alfabetical
print array_mix
array1=[1,2,3,4]
array2=["a","b","c"]
last_first=value.join_array array1, array2
puts "result"
value.print_array last_first