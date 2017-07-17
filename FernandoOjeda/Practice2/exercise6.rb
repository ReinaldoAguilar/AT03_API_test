class Father
  @@amount = 100
  def self.amount
      @@amount
  end
end

puts Father.amount

#########################################

class ChildOne < Father
  def moneyTaken()
     puts @@amount -= 40
     puts "The amount that the first child took"
  end
end

d = ChildOne.new()
d.moneyTaken

#########################################

class ChildTwo < Father
  def moneyTakenTwo()
    puts @@amount -= 30
    puts "The amount that the second child took"
  end
end

d = ChildTwo.new()
d.moneyTakenTwo

##############################################

class ChildThree < Father
  def moneyTakenThree()
    puts @@amount -= 20
    puts "The amount that the third child took"
    puts "The total amount that the father has is: #{@@amount}"
  end
end

d = ChildThree.new()
d.moneyTakenThree

