=begin
Create 1 method that is going to return an array
Create 1 method that is going to print the first element of an array received as argument
Create 1 method that is going to print the last element of an array received as argument
Create 1 method that is going to receive two different arrays , and will print the common elements between both arrays

=end

class ClassArray

  def method_array
    @array_attribute = []
    fill_Array
  end

  def fill_Array
    @array_attribute.push("luis")
    @array_attribute.push("marco")
    @array_attribute.push("maria")
    return @array_attribute
  end

  def print_array
    return @array_attribute

  end

  def method_argument_array_first(array_argument)
    puts "This is the first item Array : %s" %array_argument.first;
  end
  def method_argument_array_last(array_argument)

    sinze_arrays = array_argument.length
    puts "This is the first item Array : %s" %array_argument[sinze_arrays-1];

  end

  def method_argument_two_array(array_firs, array_seconds)
   p array_firs & array_seconds
  end
end

classArray = ClassArray.new

classArray.method_array
p classArray.print_array
classArray.method_argument_array_first(classArray.print_array)
classArray.method_argument_array_last(classArray.print_array)
classArray.method_argument_two_array(classArray.print_array,["maria","luis"])