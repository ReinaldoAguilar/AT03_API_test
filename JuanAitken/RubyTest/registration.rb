require_relative "Distance"
class Registration
  include Distance
  attr_accessor :user_name, :id, :h
  $file = File.open('execution.log', 'a')
  def initialize
    @user_name
    @id
    @h={}
  end

  def register
    val =false
    until val ==true do
      puts "Hoy many users do you want to register? (min: 3 - max: 15)"
      n=gets.to_i
      $file.write("Users: #{n}\n")
      if (n>=3&&n<=15)
        val=true
      end
    end
    n
  end
  def ask_for_users (n)
    n.times do
      val=false
      until val==true
      puts "Plase, insert the username "
      @user_name=gets.to_s
      $file.write("User name: #{@user_name}\n")
      if @user_name=~ /\b[a-z \d]{1,11}\b/
        val=true
      end
      end
      puts "Now plase insert the ID"
      @id=gets
      $file.write("id: #{@id}")
      @h[@id]=@user_name
      $file.write("Hash: #{@h}\n")

  end
  end

  def convertion_menu
    puts "Select the type of convertoion"
    puts "1: From Milimeters to centimeters"
    puts "2: From centimeters to meters"
    puts "3: From Meters to kilometers"
end
  def convertion (ob)
    case ob
      when 1
        puts "Plese insert how many milimeters do you want convert to centimeters"
        mili=gets.to_i
        puts "#{mili} milimeters are #{milimeters_to_centimeters mili} centimeters"
        $file.write("#{mili} milimeters are #{milimeters_to_centimeters mili} centimeters\n")
      when 2
        puts "Plese insert how many centimeters do you want convert to meters"
        centi= gets.to_i
        puts "#{centi} centimeters are #{centimeters_to_meters centi} meters"
        $file.write ("#{centi} centimeters are #{centimeters_to_meters centi} meters\n")
      when 3
        puts "Please insert how many meters do you want to convert to kilometers"
        meters=gets.to_i
        puts "#{centi} meters are #{meters_to_kilometers meters} kilometers"
        $file.write ("#{centi} meters are #{meters_to_kilometers meters} kilometers\n")
    end

  end

reg=Registration.new
n= reg.register
  $file.write("Amount of ussers: #{n}\n")
reg.ask_for_users n
n.times do
  vali=false
  until vali==true
  reg.convertion_menu
  o=gets.to_i
  reg.convertion o
  $file.write("Option selected #{o}\n")
    puts "Do you want to do another calculation? Y/N"
    ans= gets.to_s
  $file.write("Response: #{ans}\n")
  if (ans=="N" ||"n")
    vali= true
  end
end
end
  $file.close
end