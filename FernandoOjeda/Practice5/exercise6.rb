class Exercise6
  def generate_datas
    puts "Insert the size of the username"
    usernamesize = gets.chomp.to_i
    puts "Insert the size of the "
    usernamesize = gets.chomp.to_i

    puts "Insert amount of lines to be created"
    amounttext = gets.chomp.to_i
    amounttext.times do
      puts "Write a user name"
      text = gets.chomp
      filecreated.write(text)
    end
    filecreated.close
    filecreated = File.open(filename)
    print filecreated.read
  end
end
