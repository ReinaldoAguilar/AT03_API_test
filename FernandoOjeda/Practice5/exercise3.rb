class ExerciseSingleton
  attr_accessor :hashvalues
  def initialize(user, message, visitor)
    @user = user
    @message = message
    @visitor = visitor
  end
  def add_user
    puts "Insert the hash size"
    size = gets.chomp.to_i
    @hashvalues = {}
    size.times do
      puts "Insert a user"
      user = gets.chomp
      puts "Insert a message"
      message = gets.chomp
      @user = user
      @message = message
      @visitor += 1
      puts "Insert a user key"
      userkey = gets.chomp
      puts "Insert a message key"
      messagekey = gets.chomp
      @hashvalues[userkey] = @user
      @hashvalues[messagekey] = @message

    end
  end
  def create_hash
    valueUserMessage = {}
    valueUserMessage.store(@user,"Guess")
    valueUserMessage.store(@message,"Welcome to the city" )
    print valueUserMessage
  end
  def print_last_value(data)
    print data.values.last
  end
end

d = ExerciseSingleton.new("Guess", "Welcome to the city", 0)
data = d.hashvalues
d.print_last_value(data)