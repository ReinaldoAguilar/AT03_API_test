
require_relative 'exam.rb'
class Registration
  attr_reader :hash_user
  attr_writer :hash_user

  include Convertions

  def initialize
    @username = nil
    @id = nil
    @file = File.open(filename, 'w+')
    @file.truncate(0)
  end

  def method_user_id
    @hash_user = {}
    @list_name = []
    @list_id = []
    puts "Insert the amount of user to be saved between 3 to 15"
    amount = gets.chomp.to_i
    amount.to_i.times do
      puts "Insert the username"
      @username = gets.chomp
      puts "Insert the id for the user"
      @id = gets.chomp
      /^[a-z]+(_[a-z]+)?$/.match(@username) ? @list_name.push(@username) : "Insert a valid username"

      @list_id.push(@id)
    end
    @hash_user.store('user', @list_name)
    @hash_user.store('id', @list_id)
  end

  def more_user(values)
    puts "Insert the amount of user to be saved between 3 to 15"
    amount_user = gets.chomp
    puts amount_user.to_i > 2 && amount_user.to_i < 16 ? values : "Insert a valid amount"
  end
  def method_ask_options
    puts "Select what option you want to choose a,b,c"
    puts "a) From Millimeters to centimeters"
    puts "b) From centimeter to meters"
    puts "c) From meters to kilometers"
    @select_option = gets.chomp

    @file.write "Which type of conversion do you use?: \n"
    @file.write "a) From Millimeters to centimeters\n"
    @file.write "b) From centimeter to meters\n"
    @file.write "c) From meters to kilometers\n"

    @file.write "#{@type}\n"
  end

  def method_choose_conversion
      if @select_option.eql?('a')
        puts "Insert the value in ml"
        ml = gets.chomp
        puts "#{ml} ml represent #{ml.to_i * @centimeters }"
      elsif @select_option.eql?('b')
        puts "Insert the value in centimeter"
        centimeters = gets.chomp
        puts "#{centimeters} ml represent #{centimeters.to_i * @meters }"
      else
        @select_option.eql?('c')
        puts "Insert the value in meters"
        meters = gets.chomp.to_i
        puts "#{meters} ml represent #{meters.to_i * @kilometers }"
      end
  end
  def ask_user_calculate
    @list = []
    print 'You want to perform a calculation: '
    result = gets.chomp.to_s.upcase
    @file.write "You want to perform a calculation: #{result} \n"
    if resp.eql?('YES')
      method_ask_options
    elsif resp.eql?('NO')
      @user.each_value {|value| @list.push "Good #{value}"}
    end
  end

  def print_users
    puts "Users NO: #{@array}"
  end
end

d = Registration.new
d.method_user_id
hash_value = d.hash_user
d.more_user(hash_value)
d.method_choose_conversion
d.millimeters_to_centimeters

