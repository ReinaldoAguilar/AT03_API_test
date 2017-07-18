class Exercise5

  def ask_file
    puts "Insert the name and extention of the file"
    filename = gets.chomp
    filecreated = File.open(filename,'w+')
    filecreated.truncate(0)
    puts "Insert amount of lines to be created"
    amounttext = gets.chomp.to_i
    amounttext.times do
      puts "Write the text"
      text = gets.chomp
      filecreated.write(text)
    end
      filecreated.close
      filecreated = File.open(filename)
      print filecreated.read
  end
end