class Practice1
  def method_username
    puts "Enter the name"
    username = gets.chomp

    case username
      when /^[a-z 0-9_]*$/; puts "my user is : %s"%username
      else;
      puts "Not found username Please Again Enter"
      puts method_username
    end

  end
  def method_password
    puts "Enter the password"
    password = gets.chomp

    case password
      when /^\b[a-zA-Z 0-9]{8,16}\b/; puts "my password is : %s"%password
      else;
      puts "Not found username Please Again Enter"
      puts method_password
    end

  end

  def method_format_email
    puts "Enter the email"
    password = gets.chomp

    case password
      when /^[a-zA-Z 0-9]{8,16}$/; puts "my password is : %s"%password
      else;
      puts "Not found username Please Again Enter"
      puts method_password
    end
  end

end

practice1 = Practice1.new
practice1.method_username
practice1.method_password