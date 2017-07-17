# Create 1 method that is going to return an array
# Create 1 method that is going to print the first element of an array received as argument
# Create 1 method that is going to print the last element of an array received as argument
# Create 1 method that is going to receive two different arrays , and will
# print the common elements between both arrays

def array_list
  a=[3,2,2,1]
end

def array_print_first array

puts array.first
end
def array_print_last array
  puts array.last
end
def array_common(arrayA , arrayB)
  puts "elemets commons"
  puts a=arrayA&arrayB
end
a=[2,4,5,1]
value=array_list
array_print_first value
array_print_last value
 array_common value, a