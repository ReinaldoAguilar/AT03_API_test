=begin
1.Create a class considering :
  1.Initial  amount of items to buy are 0
  2.Initial list of items with the specific price for each one
  3.Initial list of items with the quantity of each one
  4.Initial discount for each item as 0
  5.Create a method to buy an item(ask for the item and for the amount, after an item is buy, you should decrease the quantity from the list of items)
  6.Create a method to calculated the price according the item/quatity selected
Outside the class call to the methods in order to perform the actions :
    1.define which items/quntity will be buy
    2.Print the ist of items and the price calculated for each one
    3.Print the balance of each item
2.Answer the question :
  1.Should be better to use singleton for this implementation? Why?
=end


require 'singleton'

class Exercise4
  include Singleton

  def initialize
    @amount = 0
    @list = {"reloj" => 100, "mobile" => 200, "tv" => 400}
    @amountItems = {"reloj" => 5, "mobile" => 5, "tv" => 5}
    @discountItem = {"reloj" => 0, "mobile" => 0, "tv" => 0}
  end

  def buy_item
    puts "This is the Items in the store for sale"
    list_items
    puts "Please, choose the item that you want to buy"
    item_buy = gets.chomp
    puts "Please, insert the amount of items that you want to buy"
    amount_items = gets.chomp.to_i

    if item_buy.eql?('tv')
      amount_tvs = @list.has_key?("tv") ? @amountItems["tv"] : nil
      puts "The amount of tvs that we have in the store are:"
      puts @amountItems["tv"] = amount_tvs - amount_items
      puts "The price total that we have to pay for the items are:"
      puts price_items(item_buy, amount_items)

    elsif item_buy.eql?('mobile')
      anount_mobile = @list.has_key?("mobile") ? @amountItems["mobile"] : nil
      puts "The amount of mobiles that we have in the store are:"
      puts @amountItems["mobile"] = anount_mobile - amount_items
      puts "The price total that we have to pay for the items are:"
      puts price_items(item_buy, amount_items)

    else
      item_buy.eql?('reloj')
      amount_relojs = @list.has_key?("reloj") ? @amountItems["reloj"] : nil
      puts "The amount of relojs that we have in the store are:"
      puts @amountItems["reloj"] = amount_relojs - amount_items
      puts "The price total that we have to pay for the items are:"
      puts price_items(item_buy, amount_items)
    end
  end

  def price_items(buy, amount)
    if buy.eql?('tv')
      priceItemOne = @list.has_key?("reloj") ? @list["reloj"] : 0
      result = priceItemOne * amount
      return result

    elsif buy.eql?('mobile')
      priceItemTwo = @list.has_key?("mobile") ? @list["mobile"] : 0
      price_mobile = priceItemTwo * amount
      return price_mobile

    else
      buy.eql?('reloj')
      priceItemThree = @list.has_key?("tv") ? @list["tv"] : 0
      price_reloj = priceItemThree * amount
      return price_reloj
    end
  end

  def list_items
    @list.each do |key, value|
      puts "We have #{key} and the price is #{value} dollars"
    end
  end
end

d = Exercise4.instance
d.buy_item


###################################################################################################
=begin
1.- Should be better to use singleton for this implementation? Why?

For this exercise is ok to use Singleton Patter, because the information that we have
about the shop is not going to change, will be the same information for all the customers.

=end



