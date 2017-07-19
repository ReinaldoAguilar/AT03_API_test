require 'singleton'
class Singleton_2
    include Singleton
    def initialize
      @buy_quantity = 0
      @cost = 0
      @hash_product ={vaio:{name:'vaio',precio:100,quatity:200},'acer'=>{name:'acer',precio:50,quatity:350}}
      @hash_item = {Computadora:@hash_product}

    end

    def method_lisItem
     @hash_item[:Computadora].each{|name,value| puts "#{name} : #{value}"}
    end
  def method_buy

    puts 'This List Product'
    method_lisItem
    puts 'Enter the item for buy?'
    name_item = gets.chomp
    puts 'Enter the quality for buy?'
    @buy_quantity = gets.chomp.to_i
     @hash_item[:Computadora].select do |key,hash|
       if(hash[:name]==name_item)
         quantity_product(name_item)
         cost = price_product(name_item)
         puts "The cost is:#{cost}"
       else
         puts "Please enter a product"
       end

     end
  end

  def quantity_product(name_item)
    puts @buy_quantity
    @hash_item[:Computadora][
        name_item.to_sym][:quatity] -=@buy_quantity
  end
    def price_product(name_item)
     @hash_item[:Computadora][name_item.to_sym][:precio] * @buy_quantity
    end
  def perfoman_action
    puts "Enter Action?"
    puts "a) buy"
    puts "b) print list item"
    puts "c) print valance:"
     action = gets.chomp
    case action
      when 'a';
        method_buy

    end
  end
  def method_print
    p @hash_item
  end
end

singleton =Singleton_2.instance
singleton.method_print
singleton.perfoman_action
singleton.method_print


