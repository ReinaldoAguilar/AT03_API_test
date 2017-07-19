class Hash_practice_six
  attr_accessor :person
  def method_size_person
   puts "Enter size Person? "
   size_person = gets.to_i
   return size_person
  end
  def method_create_person(person_size)
   @person = {}
   person_size.times do|value|
    puts "Name Person"
    name = gets.chomp
    puts "id Person"
    key = gets.to_i

    @person.store key+value, name

   end
  end
  def method_getName
    person.each_value {|name| puts name}
  end
  def method_getId
   person.each_key {|key| puts key}
  end
  def method_name_upper_array
    array_new = []
    person.each do |keys,value|
      array_new.push value.upcase
    end
    return array_new
  end
  def method_person_print()
   person.each do |key,value|
     puts "Goog bye %s "%value
   end
  end
end

hash_class = Hash_practice_six.new
hash_class.method_create_person(hash_class.method_size_person)
hash_class.method_getName
hash_class.method_getId
p hash_class.method_name_upper_array
hash_class.method_person_print()