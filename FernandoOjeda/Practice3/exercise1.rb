=begin
Create one class named Person
This class should have one setter to the name.
One getter to the greet for the person e.g. Hi <name>
One setter and getter to a special message e.g. <name> Have a nice day.
=end

class Person
  attr_reader :item_name
  attr_writer :item_name
  def initialize(name)
    @name = name
  end
end

d = Person.new("Fernando")
d.item_name = "Jose"
puts "Hi #{d.item_name}"
puts "#{d.item_name} Have a nice day"