module Distance
  def Distance.convert_cent cant
    res=cant/10
  end
  def Distance.convert_meter cant
    res=cant/100
  end
  def Distance.convert_kilometer cant
    res=cant/1000
  end
end

$data=File.open("execution.log",'a')
require 'singleton'
class Registration
  attr_accessor :nameuser,:id_user, :h
  include Singleton
  include Distance
  def register cant_in
    @h= {}
    user=""
    id=""
    n=cant_in
    @nameuser=0
    @id_user=0
    $data.write(n.to_s+"\n")
    n.times do

      while @nameuser == 0
        puts "please insert the user name"
        user = gets.to_s.chomp
        $data.write(user.to_s+"\n")
        if user=~ /^(?=.*[0-9])(?=.*[a-z]).{1,11}$/
          $data.write(user.to_s+"\n")
          @nameuser =1
        end
      end
      puts "please insert the id user"
        id = gets.to_s.chomp
      $data.write(id.to_s+"\n")
      @nameuser=0

      @h.store id,user

    end
    $data.write(@h.to_s+"\n")
    return @h
  end
  def amount_user
    cant=0
    while  cant== 0
      puts "please insert the cant user "
      n= gets.to_i
       $data.write(n.to_s+"\n")
      if (n<16&&n>2)
        register n
        cant =1
      end
    end

    $data.write(n.to_s+"\n")
    return n

end
  def ask_convertion
    print "From Millimeters to centimeters"
    print "From centimeters to meters"
    print "From meters to kilometers"
    cant=0
    option=""
    while  cant== 0
      puts "please insert the only a ,b or c"
      option=gets.chomp.to_s
      $data.write(option+"\n")
      if option=='a'or option=='b'or option=='c'
        calculation option
        cant =1
      end
    end
    $data.write(option+"\n")
    return option
  end

  def calculation(option)
    $data.write(option+"\n")
    case option
      when "a" then
        puts "Insert the value in millimeters:"
        insert=gets.chomp.to_i
        $data.write(insert.to_s+"\n")
        result = Distance.convert_cent insert
        $data.write(result.to_s+"\n")
        message = "#{insert} ml represent#{result} cm\n"
        $data.write(message+"\n")
        puts message


      when "b" then
        puts "Insert the value in Centimeter:"
        insert=gets.chomp.to_i
        $data.write(insert.to_s+"\n")
        result = Distance.convert_meter insert
        $data.write(result.to_s+"\n")
        message = "#{insert}cm represent #{result} mt\n"
        $data.write(message+"\n")
        puts message


      when "c" then
        puts "Insert the value in Meters:"
        insert=gets.chomp.to_i
        $data.write(insert.to_s+"\n")
        result = Distance.convert_kilometer insert
        $data.write(result.to_s+"\n")
        message = "#{insert} m represent #{result} Km\n"
        $data.write(message+"\n")
        puts message

      else
        message= "Not exist option #{option}\n"
        $data.write(message+"\n")
        puts message

    end
  end
  def ask_user
    array=[]
    flag=0
    @h.each do |key, value|
      if value==ask_user then
        $data.write(value+"\n")
        while  flag== 0
          puts "if you want calculation,in only yes or no"
          ask_user=gets.chomp.to_s
          $data.write(ask_user+"\n")
          if ask_user=="yes"then
            ask_convertion
            $data.write(ask_user+"\n")
            flag =1
          end
          if ask_user=="no"
            print bye="good bye"
            $data.write(bye+"\n")
            array.push value
            $data.write(array+"\n")
            flag=1
          end

        end

      end

    end
    $data.write(array+"\n")
    return array
  end
  def print_list value
    print value
    $data.write(value+"\n")
  end


end

 value=Registration.instance
value.amount_user
value.ask_convertion