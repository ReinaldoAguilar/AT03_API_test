class Person
  attr_accessor :name
def initialize input
  @name = input.to_s
end
end

var=Person.new("Pepe")
puts "Hi ,"+var.name
var.name= "Carlos"
puts var.name+",Have a nice day."
