class ArraysOne

  def ask_for_array
    a=1
    arr=[]
    puts "Plase, insert the lengh of the array"
    n= gets.chomp.to_i
    n.times do puts "please insert the #{a} element"
      element = gets.chomp.to_i
     a =a+1
      arr.push element
    end
     arr
  end
  def print_array (array)
    print array
  end
end

a= ArraysOne.new
 array = a.ask_for_array
a.print_array array