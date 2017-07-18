class Practice2
     attr_reader :hash_register
   def initialize
     @hash_register ={}
   end
  def method_hash
    @list_resul = []
    puts "Enter size Array for ID"
    size_tam = gets.to_i
    fill_field(size_tam)
  end
  def fill_field(size)

    size.times do |value_item|
      flag = true
      while flag
          puts "Enter the item value 1....100 please the register is : #{value_item +1}"
          item = gets.chomp
          if item =~/^\d+$/ && item.to_i<=100
            flag =  false
            @list_resul.push item

          else
            puts "Enter other item"
          end
        end
    end
    @hash_register.store 'id',@list_resul
  end

   def method_name
     @list_name = []
     puts "Enter size Array for name"
     size_tam = gets.to_i
     fill_field_name(size_tam)
   end
   def fill_field_name(size)

     size.times do |value_item|
       flag = true
       while flag
         puts "Enter the item value word in lowercase please the registe is: #{value_item +1}"
         item = gets.chomp
         if item =~/^[a-z]{1,8}$/
           flag =  false
           @list_name.push item
         else
           puts "Enter other item e.g luis"
         end
       end
     end
     @hash_register.store "name",@list_name
   end
  def method_start_id
    puts"Enter a number for id star"
    number = gets.chomp
    p @hash_register['id'].select {|n| n.start_with?(number)}
  end

   def names_start_with
     puts"Enter a character for name start with"
     character = gets.chomp
   p  @hash_register["name"].select {|name| name.start_with?(character)}
   end
     def the_id_Hash_iterator
       @hash_register['id'].each {|id| the_id_Hash(id)}
     end
   def the_id_Hash(id)
     case id.to_i
       when 1..25
         puts 'Group 1'
       when 26..50
         puts 'Group 2'
       when 51..75
         puts 'Group 3'
       when 76..100
         puts 'Group 4'
       else
         puts 'The id introduced is not a valid one!'
     end
   end

end

practice = Practice2.new
practice.method_hash
p practice.hash_register
practice.method_name
p practice.hash_register

practice.method_start_id
practice.names_start_with
practice.the_id_Hash_iterator


