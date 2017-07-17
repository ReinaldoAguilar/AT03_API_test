=begin
Create 1 method that is going to return an array​
Create 1 method that is going to print the first element of an array received as argument​
Create 1 method that is going to print the last element of an array received as argument​
Create 1 method that is going to receive two different arrays , and will print the common elements between both arrays​
=end

class Exercise1

  def return_array()
     print a = [1,2,3,4,5]
  end
  def return_first_element(ar)
    puts "This is the first element of the array"
    puts first = ar.first
  end
  def return_last_element(arr)
    puts "This is the last element of the array"
     puts last = arr.last
  end
  def return_common_element(arOne, arTwo)
     puts "This is the common elements between both arrays"
     print b = arOne & arTwo
  end
end

d = Exercise1.new
d.return_array
d.return_first_element(["Camila", "Catalina", "Monica"])
d.return_last_element([1,2,3,4,5])
d.return_common_element([1,2,3,4,5], [1,2,7,8,9])
