=begin
1.Add a class that initialized the values of :
User : Guest
Message : Welcome to the city
Visitors : 0
2.Inside the class add a method to :
  1.Add a user
  2.Add a welcome message
  3.Increment visitors amount
  4.Save all the users, and messages in a hash
  5.Using attr_accesor print the last user defined
=end

class ExerciseSingleton
  attr_accessor :hashvalues
  def initialize
    @user = "Guest"
    @message = "Welcome to the city"
    @visitor = 0
    @hashvalues = {}
  end
  def add_user
    @hashvalues = {}
      users =[]
      messages = []
      puts "Insert a user"
      @user = gets.chomp
      puts "Insert a message"
      @message = gets.chomp

      users.push(@user)
      messages.push(@message)

      @hashvalues.store('users', users)
      @hashvalues.store('messages', messages)
      @hashvalues.store('visitor', @visitor)
    end
  def print_last_value(data)
    array_value = data['users']
    puts array_value.last
  end
end

d = ExerciseSingleton.new
d.add_user
data = d.hashvalues
d.print_last_value(data)

###########################################################################

require 'singleton'

class ExerciseSingleton
  include Singleton
  attr_accessor :hashvalues
  def initialize
    @user = "Guest"
    @message = "Welcome to the city"
    @visitor = 0
    @hashvalues = {}
  end
  def add_user
    @hashvalues = {}
    users =[]
    messages = []
    puts "Insert a user"
    @user = gets.chomp
    puts "Insert a message"
    @message = gets.chomp

    users.push(@user)
    messages.push(@message)

    @hashvalues.store('users', users)
    @hashvalues.store('messages', messages)
    @hashvalues.store('visitor', @visitor)
  end
  def print_last_value(data)
    array_value = data['users']
    puts array_value.last
  end
end

d = ExerciseSingleton.instance
d.add_user
data = d.hashvalues
d.print_last_value(data)

#########################################################################################

=begin
Diference between use singleton and not use singleton

The difference between both case are that, when we use the Singleton Pattern the method initialize
is used just once. We made just only one instance of the object.
When we do not use the Singleton Pattern we can instance the object many time and the values can be chancing
with the inicialize method values and we do not have the result that we are waiting.

=end