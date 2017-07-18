require 'singleton'
require_relative 'ConvertionModule'
$file_example = File.open('logUsercreada2.txt', 'a')
class ClassRegisters

  include Singleton
  include ConvertionModule
  attr_accessor :hash_user

  def initialize
    @username = nil
    @id = nil
    @hash_user = {}

  end
  def method_createUser
    puts "Enter a ID User: "
    @id=gets.to_i
    $file_example.write("#{@id}\n")
    flag = true
   while flag
     puts "Enter a name user: "
     @username=gets.chomp
     if @username =~ /^[a-z0-9]{1,11}$/
       flag = false

     else
       puts "Invalid username. e.g no more tha 11 characters and lower Case"
     end
   end
    @hash_user.store  @id, @username
    $file_example.write("#{@username}\n")
    return @hash_user
  end

  def method_amount_user
    puts("Enter the amount user please")
    size_user =gets.to_i
    if(size_user>=3 && size_user<=15)
      size_user.times do |value|
        method_createUser
      end
    else
      puts "This system accept 3<= number <=15"
    end
  end

  def method_converter
    puts "List the type of convertion ?"
    puts "a) From Millimeters to centimeters"
    puts "b) From Centimeter to meters"
    puts "c) From Meter to kilometers "
    puts "Enter an option? : "

    @option=gets.chomp

  end

  def method_according_value
    method_converter
    case @option
      when "a" then
        puts "Enter the value in millimeters:"
        $file_example.write("Enter the value in millimeters\n")
        value=gets.chomp.to_i
        result = ConvertionModule.milliToCentimeters(value,$file_example)
        puts "#{value} millimeters represent #{result} cm"

      when "b" then
        puts "Enter the value in Centimeter:"
        $file_example.write("Enter the value in Centimeter:\n")
        value=gets.chomp.to_i
        result = ConvertionModule.centiToMeters(value,$file_example)
        puts "#{value} Centimeter represent #{result} meters"

      when "c" then
        puts "Enter the value in Meters:"
        $file_example.write("Enter the value in Meters:\n")
        value=gets.chomp.to_i
        result = ConvertionModule.metersToKilometers(value,$file_example)
        puts "#{value} Meters represent #{result} Km"
    end
  end

  def method_by_each_calculate

    result = []
    @hash_user.each{|id,name|
      puts"you %s want calculate?"%name
      option=gets.chomp.to_s
      if(option=="YES")
        $file_example.write("option YES:\n")
        method_according_value
      else
        puts"Good bye"
        $file_example.write("Good bye:\n")
        result.push(name)
      end
    }
    return  result
  end
  def method_closeFile
    $file_example.write("close\n")
    $file_example.close
  end

end

classuser = ClassRegisters.instance
classuser.method_amount_user
puts"calculation that doesn't user #{classuser.method_by_each_calculate}"
classuser.method_closeFile