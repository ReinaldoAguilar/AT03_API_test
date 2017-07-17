class Father
  #variable class amount.
  @@amount
  #initialize of the father class
  def initialize(amount)
    @@amount = amount
  end

  def amount
    @@amount
  end

end

#class child
class Child <Father
  #variable instance
  @amountChild
  #initializeof the child.
  def initialize(amountChil)
    @amountChild = amountChil
  end

  def childHave
    @@amount -= @amountChild
  end
end


puts "the introducing the amount the father"

amount=gets.chomp.to_i
father = Father.new(amount)

puts "the introducing the amount the child"

amountChilder=gets.chomp.to_i
child = Child.new(amountChilder)

puts "the introducing the amount the child2"

amountChild2=gets.chomp.to_i
child2 = Child.new(amountChild2)
puts "the introducing the amount the child3"

amountChild3=gets.chomp.to_i
child3 = Child.new(amountChild3)
#distribute between in the 3 childers.
child=child.childHave
child2 =child2.childHave
child3 =child3.childHave
#the show the amount of the father.
 puts "the amount father money is #{child3}"


