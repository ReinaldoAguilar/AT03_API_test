class Father
   # attr_reader :amount
   @@amount=100
  def amounts
    @@amount
  end


end
class Child1<Father
  def getMoney
    value=20
    @@amount-=value
     puts "Child 1 take #{value}"
  end

end
class Child2<Father
  def getMoney
    value=30
    @@amount-=value
    puts "Child 2 take #{value}"
  end

end
class Child3<Father
  def getMoney
    value=10
    @@amount-=value
    puts "Child 3 take #{value}"

  end

end

puts Father.new.amounts
Child1.new.getMoney
Child2.new.getMoney
Child3.new.getMoney
puts Father.new.amounts
