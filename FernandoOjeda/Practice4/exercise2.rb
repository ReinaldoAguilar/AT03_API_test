class Exercise2

  def methodOne
      puts "Insert the size of the array"
      a = gets.chomp.to_i
      b = []
      a.times do
        puts "Insert the element for the array"
        value = gets.to_i
        b.push value
      end
      return b
  end
  def array_methodOne(valueArray)
    print valueArray
  end
end

d = Exercise2.new
valueArray = d.methodOne
d.array_methodOne(valueArray)