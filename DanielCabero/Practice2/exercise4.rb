class Exercise4

  #declared the age variable class.
  @@age
  #method initialize
  def initialize(name, age)
    name = name
    @@age = age
  end

  #the method that calculate the minutes of the age.
  def ageMinutes
    @@age*24*60*365
  end

end

puts "Introduce the name and age"
#input the class variables.
#use the chomp to_s for ensure the name.
name = gets.chomp.to_s
#use chomp to_i for the age.
age = gets.chomp.to_i
minutes = Exercise4.new(name,age)
#print the variables.
puts "the age #{age} in minutes is #{minutes.ageMinutes}"
puts "the name is : #{name} and age : #{age}"


