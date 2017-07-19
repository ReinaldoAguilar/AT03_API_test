
# Create a class with :
#     method to create the hash, the method should ask for the length of the hash
#    According the length defined should ask to the user for the key and for 	the value.
#     Use a getter to obtain the hash created in the method
#         Method to print the hash key
#          Method to print the hash values
#         Method to print the hash
#             Method to define is a key inserted by the user, exists on the hash.
#                     Method to define is a value inserted by the user, exists on the hash.
#       Instance the class and call to the method to create the hash
#          Using the returned hash,  call to the other methods with this argument.


class Practice4
  attr_reader :b
  def elements

    print "number of elements "
    a=gets.chomp.to_i
    @b={}

    a.times do
      print "input the key "
      key=gets.chomp.to_i
      print "input the value "
      value=gets
      @b[key]=value.chomp.to_s
    end
  end
  def hash_keys
    print @b.keys
  end
  def hash_values
   print @b.values
  end
  def hash_list
    print @b
  end

  def exist_key

  print "insert key"
     p=gets.to_i
    puts @b.has_key? p

  end
  def exist_value
    print "insert value"
    p=gets.to_s
    puts @b.has_value? p

  end


end

value=Practice4.new
value.elements
# print value.b
value.hash_keys
value.hash_values
value.hash_list
value.exist_key
value.exist_value