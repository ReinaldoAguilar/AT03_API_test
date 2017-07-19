def file(name, ext)
  file = File.open("#{name}.#{ext}", 'w+')
  file.truncate 0
  print "How many lines do you want to add?"
  n = gets.chomp.to_i
  numerator = 1
  n.times do
    print "This is the line # #{numerator}: "
    file.write "#{gets.chomp}\n"
    numerator += 1
  end
  file.close
  File.exist?("#{filename}.#{extension}")
  file = File.open("#{filename}.#{extension}")
  print file.read

end
print "Inser the file name :\n"
filename = gets.chomp.to_s
print "Instert the extension :"
ext = gets.chomp.to_s
file filename, ext
