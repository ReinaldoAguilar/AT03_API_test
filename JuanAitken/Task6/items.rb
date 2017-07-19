class Items

  attr_accessor :list_item_cant, :list_items_price

  def initialize
    amount_items=0
    @list_items_price={"item1" => 50, "item2" => 20, "item3" => 10, "item4" => 30}
    @list_item_cant={"item1" => 10, "item2" => 5, "item3" => 4, "item4" => 8}
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

  def calculate_price item, cant
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

value=Items.new
value.buy_item "item1", 2
value.buy_item "item2", 2
puts value.calculate_price itemA, 2
puts value.calculate_price itemB, 2
print value.list_item