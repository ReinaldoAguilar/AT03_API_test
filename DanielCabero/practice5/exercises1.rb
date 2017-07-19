class Exercises1

  def register
    @person={}

    puts " introduce the size"
    length = gets.chomp.to_i

    length.times do
      puts "write the id"
      id=gets.chomp.to_i
      puts "write the name"
      name = gets.chomp.to_s
      @person[id]=name
    end
  end

  def uppercase
    list =[]
    @person.each_value |value| list<< value.upcase
      puts "\n the username register #{list}"
  end

  def allRegister
    puts "The usernames is #{@person}"
  end

  def greettings
    @person.each_value{|value|  puts "\n good bye #{value}"}
  end

end

test = Exercises1.new
test.register
test.allRegister
test.greettings

