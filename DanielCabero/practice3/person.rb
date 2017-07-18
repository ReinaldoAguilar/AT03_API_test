class Person

  #defined the atribute getter and setter.
  attr_accessor :my_name

  def initialize thisName
    @my_name=thisName

  end
end

puts "Hi, what your name "
#this use the get of the name.
my_name= gets.to_s
my_person=Person.new my_name
puts "Hi #{my_person.my_name}"
puts "my name is #{my_person.my_name}"
puts "What do you want me to call you"
other = gets.to_s
# this use the set for the change name.
puts "Your new name is #{my_person.my_name =other}"
