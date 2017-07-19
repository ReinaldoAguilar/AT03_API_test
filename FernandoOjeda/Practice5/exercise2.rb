=begin
1.Method that will create a hash with a list of userID and userName,the userID should be only numbers between 1 to 100. Username should be only lowercase (nor more than 8 digits)
2.Method that is going to request to the user for a number (only 1 number) and need to return the amount of users that have their user ID starting with the number inserted (E.g. if user inserted 1, then could count all users with 1, 10,11,12,13..19 or 100), return and array with the user_ID that fulfilled this condition
3.Method that is going to request to the user for a character (only 1 char) and need to return the amount of users that have their  userName starting with the character inserted (E.g. if user inserted a, then could count all users that start with a), return and array with the list of userName that fulfilled this condition
4.Method to display a message considering :
UseID between 1-25 “User belong Group 1”
UseID between 26-50 “User belong Group 2”
UseID between 51-75 “User belong Group 3”
UseID between 76-100 “User belong Group 4”
Consider to use Case Equality
5.Method to print the array received
=end

class Exercise2
  attr_reader :hash_user

  def create_id_userName
    @list_id = []
    puts "Insert the size of the id array for the user"
    size = gets.chomp.to_i
    @hash_user = {}
    size.times do
      puts "Insert the id for the user from 1 to 100 to be valid"
      id_value = gets.chomp
      /^\d+$/.match(id_value) && id_value.to_i > 0 && id_value.to_i <= 100 ? @list_id.push(id_value) : "Insert other valid id"
    end
    print @hash_user.store("id", @list_id)
  end

  def create_username
    @list_name = []
    puts "Insert the size of the user array"
    sizeuser = gets.chomp.to_i
    @hash_user = {}
    sizeuser.times do
      puts "Insert the username valid just lowercase and character of 8 digits"
      uservalue = gets.chomp
      /^[a-z]+(_[a-z]+)?$/.match(uservalue) ? @list_name.push(uservalue) : "Insert a valid username"
    end
    print @hash_user.store("username", @list_name)
  end

  def search_userId(userId)
    puts "Insert only 1 number"
    number = gets.chomp
    print userId['id'].select {|value| value.start_with?(number)}
  end

  def search_username(userId)
    puts "Insert only 1 character"
    value_userName = gets.chomp
    print userId['username'].select {|value| value.start_with?(value_userName)}
  end
  def display_message(id)
    id['id'].each do |value|
      case value.to_i
        when 1..25; puts "User belong Group 1"
        when 26..50; puts "User belong Group 2"
        when 51..75; puts "User belong Group 3"
        when 76..100; puts "User belong Group 4"
        else; puts "The id does not belong any group"
      end
    end
  end
  def print_array(arrayData)
    print arrayData
  end
end

d = Exercise2.new
d.create_id_userName
hash_data = d.hash_user
d.create_username
d.search_userId(hash_data)
search_user = d.hash_user
d.search_username(search_user)
d.display_message(hash_data)
d.print_array(hash_data)
