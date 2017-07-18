=begin
1.ask for a filename and extension  .E.g test.txt
2.Then you will delete all the content of the file (in case that already exist)
3.Then ask for the user for the amount of lines to be added
4.According the amount of lines, ask for each line.
5.Close the file
6.Finally print the values of the file (also be sure that file is created in your current directory)
7.Change the mode of the file in order to add ay new line to tehe xisting file. Run the script and push the code and the result
=end


class ExerciseFile

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
      filecreated.write("The text in the file is: #{text}\n")
    end
      filecreated.close
      filecreated = File.open(filename)
      puts filecreated.read
  end
end

d = ExerciseFile.new
d.ask_file
