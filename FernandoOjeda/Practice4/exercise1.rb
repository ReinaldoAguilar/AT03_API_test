class Exercise1

  def return_array()
      puts a = [1,2,3,4,5]
  end
  def return_first_element(ar)
     puts first = ar.first
  end
  def return_last_element(arr)
    puts last = arr.last
  end
  def return_common_element(arOne, arTwo)
     puts b = arOne & arTwo
  end
end

d = Exercise1.new
d.return_array
d.return_first_element(["Camila", "Catalina", "Monica"])
d.return_last_element([1,2,3,4,5])
d.return_common_element([1,2,3,4,5], [1,2,7,8,9])
