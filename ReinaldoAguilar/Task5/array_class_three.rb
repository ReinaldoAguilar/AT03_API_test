class Array_class_three
  def method_crate_array_number
    puts "Enter the size for array please"
    size_array = gets.to_i

    array_item =[]

    size_array.times do |item|
      puts "Enter only number"
        item = gets.to_i
        array_item.push item

    end

    array_alpha =[]
    size_array.times do |item1|
        puts "Enter Alpha ?"
        item1 = gets.chomp
       array_alpha.push item1
    end

    return array_item, array_alpha, array_item + array_alpha
  end
  def method_print_array
    array_number,array_alpha, array_mix = method_crate_array_number

    p array_number
    p array_alpha
    p array_mix
  end
  def item_array_common(arry1,arry2)
    puts "The first item is Array first : #{arry1.first} Array second is : #{arry2.first}"
    puts "The Last item is Array first : #{arry1.last} Array second is : #{arry2.last}"

    p arry1&arry2
  end
  def method_item_extract_array(arry1,arry2)
    p arry1 + arry2
    new_array_item_extract arry1.first,arry2.last
  end
  
  def new_array_item_extract(first_item,last_item)
    new_array = []
    new_array.push(first_item)
    new_array.push(last_item)
    return new_array
  end
  def method_four(array3)
    p array3
  end
end

arrayThree = Array_class_three.new
arrayThree.method_print_array
arry1 = ["ala","beto","luis","maria","b",34]
arry2 = ["beto","ama",34]

arrayThree.item_array_common(arry1,arry2)
arrayThree.method_four(arrayThree.method_item_extract_array(arry1,arry2))

