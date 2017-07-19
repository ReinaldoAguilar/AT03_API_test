class Array_Class_Two
  def method_without_argument
    puts "Enter the size array?"
    size_array = gets.to_i
    array_new = []

    size_array.times do |value|
      puts"Enter value: #{value+1}"
      value = gets.chomp
      array_new.push(value)
    end
   return array_new
  end
  def print_method_without_argument(array)
    p array
  end
end


array_class = Array_Class_Two.new

result_array = array_class.method_without_argument
array_class.print_method_without_argument(result_array)