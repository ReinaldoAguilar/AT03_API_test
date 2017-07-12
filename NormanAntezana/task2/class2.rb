class Class2

  attr_reader :name,:age
  def initialize
    print"nombre:"
    @name=gets.chomp
    print"age:"
    @age=gets.chomp
     # puts @name+",#{@age}"
  end
end
class Class3
  def calculate(age)
     # age 1 have year 365 days,1 day have 24 hours ,1hour have 60minutes.
     puts age.to_i*365*24*60
  end
end

age=Class2.new.age
Class3.new.calculate(age)