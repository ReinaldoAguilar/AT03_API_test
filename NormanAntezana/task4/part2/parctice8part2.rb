
class Parctice8part2
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

value=Parctice8part2.new
puts value.user
value.add_a_user
print value.user