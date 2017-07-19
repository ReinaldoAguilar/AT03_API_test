class Email
  $ctrl=0

  def set_user_name

    while $ctrl == 0 do
      puts "please register a user name with lowercase letter (a-z), number (0-9) and an underscore"
      user = gets
      if user =~ /[a-z0-9_]/
        $ctrl=1
      end
    end
  end

  def password
    $ctrl = 0
    while $ctrl == 0
      puts "Now insert your password lowercase letter (a-z), number (0-9), letter (A-Z) and the length have to be between 8 and 16 characters"
      pass= gets
      if pass =~/[a-z0-9_]{8,16}/
        $ctrl =1
      end
    end
  end

  def set_email
    $ctrl=0
    while $ctrl == 0
      puts "please, insert your email"
      email = gets
      if email =~/[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+/i
        puts "leggo"
        $ctrl =1
      end
    end
  end
end


email = Email.new

email.set_user_name
email.password
email.set_email


