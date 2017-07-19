=begin
Add a method that is going to ask for a username :
Need to be write with lowercase letter (a-z), number (0-9), an underscore
Add a method that is going to ask for a password:
Need to be write with lowercase letter (a-z), number (0-9), letter (A-Z) and the length have to be between 8 and 16 characters
Add a method that is going to ask for email
Need to have the format anything@domain.com (could accept also country e.g. anything@domain.com.bo)
=end

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