=begin
Create one class named Person
This class should have one setter to the name.
One getter to the greet for the person e.g. Hi <name>
One setter and getter to a special message e.g. <name> Have a nice day.

You can directly print the message in the instance variable or out of the class

=end

class Persona 
 attr_writer:name
 attr_reader:name

 attr_accessor:mensage

end


persona = Persona.new()
persona.name = "Carlos"
persona.mensage = persona.name 

puts "HI %s " %persona.name
puts "%s Have a nice day" %persona.mensage