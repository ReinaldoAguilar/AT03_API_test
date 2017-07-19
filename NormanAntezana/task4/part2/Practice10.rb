# Create a method that is going to :
#  ask for a filename and extension  .E.g test.txt
#   Then yCreate a method that is going to :
#  Then you will delete all the content of the file (in case that already exist)
#  Then ask for the user for the amount of lines to be added
#   According the amount of lines, ask for each line.
#    Close the file
#         Finally print the values of the file (also be sure that file is created in your current directory)
#     7.  Change the mode of the file in order to add ay new line to tehe xisting file. Run the script and push the code and the result
#    ou will delete all the content of the file (in case that already exist)
#           Then ask for the user for the amount of lines to be added
#    According the amount of lines, ask for each line.
#   Close the file
#     Finally print the values of the file (also be sure that file is created in your current directory)
#   7.  Change the mode of the file in order to add ay new line to tehe xisting file. Run the script and push the code and the result



def file
  print "create file "
  res=gets.chomp.to_s
  file=File.open(res,'w+')
if file!=nil then
  file.truncate(0)
end
  # file!=nil ? file.truncate(0):"no exist file"
  print "amount lines "
  line=gets.chomp.to_i

  line.times do
    print "write "
    line_write=gets.chomp.to_s
     file.write (line_write+"\n")

  end
  file.close
   file2=File.open res
  return file2.read

end

  puts file
# run add filess
def add_lines
  print "create file "
  res=gets.chomp.to_s

  # file=File.open(res,'w+')
  if File.exist? res then
    file=File.open(res,'a+') do |f|
      print "add line "
      line_write=gets.chomp.to_s
      f.write (line_write+"\n")
      # file.close
    end

  else
    file= File.open(res,'w+')
    # file!=nil ? file.truncate(0):"no exist file"
    print "amount lines "
    line=gets.chomp.to_i

    line.times do
      print "write "
      line_write=gets.chomp.to_s
      file.write (line_write+"\n")
  end
    file.close
  end
  # file.close
  file2=File.open res
  return file2.read

end
add_lines