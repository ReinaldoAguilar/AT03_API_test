Given(/^I have deposited \$(\d+) in my Account$/) do |money|
  @total_money = money
end

When(/^I have that pay \$(\d+) with (\w+)$/) do |money,type|

  puts "the money: $ #{money} with #{type}"
end