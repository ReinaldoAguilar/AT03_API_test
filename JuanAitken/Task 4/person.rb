class Person
attr_reader :name
attr_writer :name
  name
end

puts"what is your name?"
n=gets
person= Person.new()
person.name=n
puts"hi #{person.name.chomp} have a nice day"
