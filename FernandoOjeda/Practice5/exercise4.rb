class Exercise4

  def initialize(amount, list, amountItems, discountItem)
    @amount = amount
    @list = list
    @amountItems = amountItems
    @discountItem = discountItem
  end
  def buy_item
   @amountItem = @list.has_key?("tv")? @amountItems["tv"]: nil
   puts @amountItems["tv"] = @amountItem -1
  end
  def buy_items
    @priceItemOne = @list.has_key?("reloj")? @list["reloj"]: 0
    @priceItemTwo = @list.has_key?("mobile")? @list["mobile"]: 0
    @priceItemThree = @list.has_key?("tv")? @list["tv"]: 0
    puts totalprice = @priceItemOne + @priceItemTwo + @priceItemThree
  end
end

d = Exercise4.new(0, {"reloj" => 100, "mobile" => 200, "tv" => 400}, {"reloj" => 5, "mobile" => 5, "tv" => 5}, {"reloj" => 0, "mobile" => 0, "tv" => 0})
d.buy_item
d.buy_items
