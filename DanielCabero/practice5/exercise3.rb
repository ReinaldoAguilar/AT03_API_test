require 'singleton'
class Exercise3
  include Singleton
  attr_accessor :user
  attr_accessor :visitors

  def initialize
    @user = {}
    @visitors=0
  end

  def Add name, message
    @user[name]= message
    @visitors+=1
  end

  def list
    puts " the user , message is #{@user} and  visitor is#{@visitors}"
  end

end

test = Exercise3.instance
puts "introduce the number of the users"
number = gets.chomp.to_i
puts number
number.times do
  puts "write the name"
  name = gets.chomp.to_s
  puts "write the message"
  message = gets.chomp.to_s
  list = test.Add name, message
  end
test.users
