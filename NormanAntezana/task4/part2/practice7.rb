
# Method that will create a hash with a list of userID and userName,the userID should be only numbers between 1 to 100. Username should be only lowercase (nor more than 8 digits)
# Method that is going to request to the user for a number (only 1 number) and need
#   to return the amount of users that have their user ID starting with the number
#   inserted (E.g. if user inserted 1, then could count all users with 1, 10,11,12,13..19 or 100),
#   return and array with the user_ID that fulfilled this condition
# Method that is going to request to the user for a character (only 1 char) and need
#    to return the amount of users that have their  userName starting with the character
# inserted (E.g. if user inserted a, then could count all users that start with a),
# return and array with the list of userName that fulfilled this condition
# Method to display a message considering :
#     UseID between 1-25 “User belong Group 1”
# UseID between 26-50 “User belong Group 2”
# UseID between 51-75 “User belong Group 3”
# UseID between 76-100 “User belong Group 4”
# Consider to use Case Equality
# Method to print the array received
#
# Please consider to use a control statement to get only the expected information, if something invalid data is inserted need to request it again.
#     Reference of reg editor online: http://www.regexr.com/


class Practice7
attr_accessor :h
$ctrl_name =0
$ctrl_id =0

def register_users
  @h= {}
  puts "how many users do you want to register?"
  n= gets.to_i
  n.times do
    while $ctrl_name == 0
      puts "please insert the user name"
      v = gets.to_s
      if v=~ /\b[a-z]{1,8}\b/
        $ctrl_name =1
      end
    end
    while $ctrl_id==0
      puts "plese inster the id"
      k= gets.to_i
      if k=~ /^(100|[1-9][0-9]|[1-9])$/
        puts "emtra"
        $ctrl_id=1
      end
      @h[k]=v
    end

  end
end

def find_id(id)
  puts @h.select {|key| key =~ /[#{id}]/}
end

def find_user(value)
  puts @h.select {|value| value =~ /[#{value}]/}
end

def group_users
  array= []
  @h.each_key {|key| array<<key.to_i}
  array.collect {|x|
    if x <= 25
      puts 'User belongs to Group 1'
    elsif x > 25 and x <=50
      puts 'User belongs Group 2'
    elsif x > 50 and x <=75
      puts 'User belongs to Group 3'
    elsif x > 75 and x <=100
      puts 'User belongs to Group 4'
    end}



end
end
user = Practice7.new
user.register_users
print "Enter the id to search:"
user.find_key gets.chomp
print "Enter the name to search:"
user.find_user gets.chomp