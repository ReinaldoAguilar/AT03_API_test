require 'singleton'
class Registration
  include Singleton
  attr_accessor :user, :id

  $file = File.open "logger.txt", 'a'

  def registerUsers
    @users = {}
    puts "the number of the user to create"
    number=gets.chomp.to_i
    number.times do
      puts "intro id"
      id = gets.chomp.to_i
      puts "introduction the name"
      user = gets.chomp.to_s
      @users.store id, user
      $file.write "#{@users}"
    end
  end

  def conversion type,calculate
    case type
      when "milimeter" then
          Meter::miliToCentimeter calculate
      when "centimeter" then
          Meter::miliToCentimeter calculate
      when "meter" then
          Meter::miliToCentimeter calculate
      else
        puts "the methods exist are Milimeter to centimeter, centimeters to meters and meters to kilometers"
    end

  end

  def needCalculation
    list = {}
    puts "select if you use the conversion 1=yes or 0=no."
    boolean= gets.chomp.to_i
    # 0 is false , 1 is true
    if boolean==1
      puts "select the option \n milimter \n centimeter \n meter"
      calc= gets.chomp.to_i
      puts "intro the number to calculate"
      numbers= gets.chomp.to_i
      conversion calc, numbers
      list.store @user, true
    else
      puts "good"
      list.store @user, false
    end
    return list
    $file.write "#{list}"
  end

  def userNotUseCalculate
    list =Array.new
    needCalculation.collect {|key, value| list<<key; value==false}
    $file.write "#{list}"
    $file.close
  end
end

test = Registration.instance
p test.registerUsers
p test.needCalculation
p test.userNotUseCalculate

