require 'singleton'
class SingletonClass
  attr_reader :hash_user
  attr_accessor :last_name
  attr_accessor :visitors

  include Singleton
  def initialize
    @user = 'Guess'
    @message ='Welcome to the city'
    @visitors = 0
    @hash_user ={'name'=>[@user],'message'=>[@message],'visitors'=>@visitors}
  end
  def add_user
      puts "Enter the user "
      name =gets.chomp
      @hash_user['name'].push name

      puts "Enter the message"
      message =gets.chomp
      @hash_user['message'].push message

       @visitors += 1

      @hash_user['visitors'] =@visitors


      @last_name = @hash_user['name'].last
  end
end

singleton_instance1 = SingletonClass.instance
singleton_instance1.add_user
p singleton_instance1.hash_user

singleton_instance2 = SingletonClass.instance
singleton_instance2.add_user
p singleton_instance2.hash_user
p singleton_instance2.last_name
