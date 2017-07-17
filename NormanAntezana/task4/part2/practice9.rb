# Create a class considering :
#  Initial  amount of items to buy are 0
# Initial list of items with the specific price for each one
#  Initial list of items with the quantity of each one
# Initial discount for each item as 0
#  Create a method to buy an item(ask for the item and for the amount,
#   after an item is buy, you should decrease the quantity from the list of items)
#  Create a method to calculated the price according the item/quatity selected
#  Outside the class call to the methods in order to perform the actions :
#  define which items/quntity will be buy
#  Print the list of items and the price calculated for each one
#     Print the balance of each item
#     Answer the question :
#   Should be better to use singleton for this implementation? Why?





 class Practice9

    attr_accessor :list_item_cant, :list_items_price
   def initialize
     amount_items=0
     @list_items_price={"item1"=>50,"item2"=>20,"item3"=>10,"item4"=>30}
     @list_item_cant={"item1"=>10,"item2"=>5,"item3"=>4,"item4"=>8}
     discount_for_item=0

   end
   def buy_item name_item, cant
     # print "name item"
     item=name_item
     # print "amount item"
     amount=cant
     @list_item_cant.each do |key, value|
       if key==item then
         puts @list_item_cant[key] = value-amount
       end

     end

   end
   def calculate_price item ,cant
     res=0
     @list_items_price.each do |key, value|
       if key==item then
        res= value*cant
       end

     end
     return res
   end
   def list_item
     res={}
     @list_items_price.each do |key, value|
       res[key]=@list_item_cant[key]*value
     end
     return res
   end

 end
itemA="item1"
 itemB="item2"

value=Practice9.new
value.buy_item "item1",2
value.buy_item "item2",2
puts value.calculate_price itemA,2
 puts value.calculate_price itemB,2
print value.list_item
