toppings = %w(pepperoni mushroom bacon pineapple)
puts "#{pizza(toppings)}"
def pizza(toppings)
toppings.map do |topping|
  "I love #{topping}"
end
end

