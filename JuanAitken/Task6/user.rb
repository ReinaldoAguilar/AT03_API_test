class User
  
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
        if k=~ /\b\d{1,2}\b|100/
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
user = User.new
user.register_users
print "Enter the id to search:"
user.find_key gets.chomp
print "Enter the name to search:"
user.find_user gets.chomp
