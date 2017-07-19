class FileClass

  def method_name_file
    print 'Enter the file name: '
    file_name = gets.chomp

    create_file(file_name, 'txt')
  end

  def create_file(file_name, extension)
    file = File.open("#{file_name}.#{extension}", 'w+')
    if(File.exist?("#{file_name}.#{extension}"))
      file.truncate 0
    end

    print 'How line be added: '
    size = gets.chomp.to_i
    line = 1
    size.times do
      print "Line on txt is #{line}: "
      file.write "#{gets.chomp}\n"
      line += 1
    end
    file.close

    File.exist?("#{file_name}.#{extension}")
    file = File.open("#{file_name}.#{extension}")
    print file.read

  end
end

fileclass = FileClass.new
fileclass.method_name_file