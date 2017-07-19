class GuessWithoutSingleton

  attr_reader :h


  def initialize
    @user = 'GuestSingleton'
    @message = 'Welcome to the city'
    @visitors = 0
    @h = {names: [@user], messages: [@message], visitors: @visitors}
  end

  def register_users
    print 'Insert the number of people to register: '
    n = gets.chomp.to_i
    n.times do
      print 'Enter the name: '
      @user = gets.to_s
      @h[:names].push(@user)
      print 'Enter the message: '
      @message = gets.to_s
      @h[:messages].push(@message)
      @h[:visitors] += 1
    end
  end

end

singleton = GuessWithoutSingleton.new
singleton.register_users

p singleton.h
puts "The last user is: #{singleton.h[:names].last}"


