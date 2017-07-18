class ArraysTwo
  def ask_for_arrays
    a=1
    first_array=[]
    second_array = []
    third_array = []
    puts "Plase, insert the lengh of the array"
    n= gets.chomp.to_i
    n.times do
      puts "please insert the #{a} element for the first"
      element = gets.chomp.to_i
      a =a+1
      first_array.push element
      end
      a=1
      n.times do
        puts "please insert the #{a} element for the second array"
        element = gets.chomp.to_s
        second_array.push element
        a =a+1
      end
    third_array = first_array + second_array
    return first_array, second_array, third_array
  end
  def print_arrays (first,second)
    puts "The firts elements are #{first[0]} and #{second[0]}"
    puts "The last  elements are #{first[-1]} and #{second[-1]}"
  end

  def jont_arrays(first, second)
    array = []
    array.push first.pop[0]
    array.push second.pop[-1]
    return array
  end

  def print_array(array)
    print array
  end
end
q= ArraysTwo.new
a,b,c= ArraysTwo.new.ask_for_arrays

q.print_arrays a,b
q.print_array q.jont_arrays(a, b)


