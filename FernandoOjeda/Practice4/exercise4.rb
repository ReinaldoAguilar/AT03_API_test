=begin
Create a class with :​
1. method to create the hash, the method should ask for the length of the hash​
  According the length defined should ask to the user for the key and for the value.​
  Use a getter to obtain the hash created in the method​
2. Method to print the hash key​
3. Method to print the hash values​
4. Method to print the hash​
5. Method to define is a key inserted by the user, exists on the hash.​
6. Method to define is a value inserted by the user, exists on the hash.​
=end


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
    a = gets.chomp
    puts valueg.has_key?(a)
  end
  def methodSix(valueg)
    puts "Insert a value"
    a = gets.chomp
    puts valueg.has_value?(a)
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

