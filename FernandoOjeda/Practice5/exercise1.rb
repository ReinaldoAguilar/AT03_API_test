class Exercise1

  def username_method
    puts "Insert the username"
    username = gets.chomp
    puts /[a-z0-9_]/ =~ username
  end
  def password_method
    puts "Insert password"
    password = gets.chomp
    puts /[a-z0-9A-Z{8,16}]/.match(password)
  end
  def email_method
    puts "Insert the email"
    email = gets.chomp
    puts email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  end
end

d = Exercise1.new
d.username_method
d.password_method
d.email_method