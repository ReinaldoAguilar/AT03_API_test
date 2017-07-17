class Arrays
  def return_array
    v= [1,2,3,4,5]
  end

  def firts_element (array)
    @firts= array[0]
  end

  def last_element (array)
    @last = array[-1]
  end

  def common_elements(arry_one, array_two)
    arry_one & array_two
  end
end

array = Arrays.new()

print "#{array.return_array } \n"

puts  array.firts_element [1,2,3,4,5,6]

puts array.last_element [1,2,3,4,5,6]

print array.common_elements [1,2,3,4], [1,2,5,6]