
# Create a class that is going to receive :
#     The amount of persons to register
# One method to get the Name and ID for all the persons registered
#    One method that consider:
#    for each one of the Names, change them to upper case
#     print the position and the Name of each person registered
#       Save the name in upper case into an array, return the array
#   One method that According the amount of persons registered
#       say “good bye <name>” to each one until all persons are gone.

class Practice5
  attr_reader :b,:a
  def cant_person
    print "number of persons "
    @a=gets.to_i
  end
  def person_to_register


    @b={}

    a.times do
      print "input the id "
      key=gets
      print "input the name "
      value=gets
      b[key]=value
    end


  end
  def change_names
    @b.each {|key,value| @b[key]=value.upcase}
    array=@b.values
     array.each_with_index {|v, i| print "index.#{i}, #{v}"}
    return array
  end
  def bye_all
     change_names.each{|value| puts "good bye #{value}"}
  end

end

value=Practice5.new
value.cant_person
value.person_to_register
value.change_names
value.bye_all