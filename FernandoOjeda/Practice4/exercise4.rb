class Exercise4
  attr_reader  :b
  def methodOne
     puts "Insert the size for the hash"
     a = gets.chomp.to_i
     @b = {}
     a.times do
       puts "Insert the key for the hash"
       c = gets.chomp
       puts "Insert the value for the hash"
       h = gets.chomp
       @b[c] = h
       print @b
     end
  end
  def methodTwo(valueg)
     print valueg.keys
  end
  def methodThree(valuee)
     print valuee.values
  end
  def methodFour(value)
    print value
  end
  def methodFive(valueg)
    puts "Insert a key"
    a = gets.chomp.to_i
    b = [a]
    puts valueg & b
  end
  def methodSix(valueg)
    puts "Insert a value"
    a = gets.chomp.to_i
    b = [a]
    puts valueg & b
  end

end

d = Exercise4.new
d.methodOne
g = d.b
d.methodTwo(g)
d.methodThree(g)
d.methodFour(g)
d.methodFive(g)
d.methodSix(g)

