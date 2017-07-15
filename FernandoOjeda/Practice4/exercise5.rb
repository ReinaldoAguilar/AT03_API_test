=begin
The amount of persons to register​
One method to get the Name and ID for all the persons registered​
One method that consider:​
 for each one of the Names, change them to upper case​
 print the position and the Name of each person registered ​
Save the name in upper case into an array, return the array​
One method that According the amount of persons registered say “good bye <name>” to each one until all persons are gone.​
=end
class ExerciseIterator
attr_reader :b

def methodOne
    puts "Insert the amount of persons to register"
    a = gets.chomp.to_i
    @b = {}
    a.times do
      puts "Insert the name of each person"
      c = gets.chomp
      puts "Insert the id of each person"
      h = gets.chomp
      @b[c] = h
      print @b
    end
end
  def methodTwo(arrayvalue)
     arrayvalue.each do |key,value|
       puts key.upcase
     end
     arrayvalue.each_with_index do|(key,value),index |
       print key
       print index
     end
     value = arrayvalue.map{ |key,value| key.upcase}
     return value
  end
  def methodThree(value)
    value.each_key do |key|
      puts "good bye #{key}"
    end
  end
end

d = ExerciseIterator.new
d.methodOne
e = d.b
g = d.methodTwo(e)
d.methodThree(g)





