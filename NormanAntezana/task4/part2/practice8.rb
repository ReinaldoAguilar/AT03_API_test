# Add a class that initialized the values of :
#     User : Guest
# Message : Welcome to the city
# Visitors : 0
# Inside the class add a method to :
#     Add a user
# Add a welcome message
# Increment visitors amount
# Save all the users, and messages in a hash
# Using attr_accesor print the last user defined
#
# Explain which differences you see between both definitions


require 'singleton'

class Practice8
  include Singleton
  attr_accessor :user
  attr_reader :visitor
 def initialize
   @list={}
   @user="Guest"
   @message="welcome to the city"
   @visitor=0
 end
  def add_a_user
    print "add user"
    @user=gets.chomp
    print "add message"
    @message=gets.chomp
    @visitor=@visitor+1
    @list[@user]=@message

  end
end
value=Practice8.instance
print value.user
value.add_a_user
print value.user

# diference the singleton only a inizilizate and use
# the class i have to inizializate when times I required