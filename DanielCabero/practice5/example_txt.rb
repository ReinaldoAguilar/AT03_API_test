class Example_txt

  def create name, extends
    myFile= File.open("#{name}.#{extends}",'a')
    myFile.truncate 10

    10.times do
      myFile.write "\n this is only test "
    end
    myFile.close
    print myFile.read

  end

  def existFile name , extends
    if File.exist? ("#{name}.#{txt}")
      myfile=File.open "#{name}.#{txt}"
      myfile.lstat
      myfile.write "\n test"

  end
end
end
test = Example_txt.new
test.create 'test' , 'txt'
test.existFile "test","txt"

