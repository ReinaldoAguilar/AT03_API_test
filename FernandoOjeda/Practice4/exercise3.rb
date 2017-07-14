class Exercise3

  def methodOne
    puts "Insert the size for the first array"
    a = gets.chomp.to_i
    puts "Insert the size for the second array"
    b = gets.chomp.to_i
    c = []
    g = []
    h = []
    a.times do
      puts "Insert the element for the first array"
      value = gets.to_i
      c.push value
    end
    b.times do
      puts "Insert the element for the second array"
      stringvalue = gets
      g.push stringvalue
    end
    print h.push c + g
    return c, g
  end
  def methodTwo(vOne, vTwo)
    print vOne & vTwo
    puts vOne.first
    puts vTwo.first
    puts vOne.last
    puts vTwo.last
  end
  def methodThree(vaOne, vaTwo)
    puts vaOne.firs
    puts vaTwo.last
    print vaOne + vaTwo
    i = vaOne + vaTwo
    return i
  end
  def methodFour(valOne)
    print valOne
  end
end

d = Exercise3.new
valueOne , valueTwo = d.methodOne
d.methodTwo(valueOne, valueTwo)
f = d.methodThree(valueOne, valueTwo)
d.methodFour(f)