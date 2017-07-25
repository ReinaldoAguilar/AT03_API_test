Given(/^Go to the customer search page$/) do
  puts "I am on the customer search page"
end

When(/^I enter the Name customer "([^"]*)"$/) do |name_custome|
  @name = name_custome
end


And(/^I enter the ID Customer "([^"]*)"$/) do |id_custome|
  @id = id_custome
end

And(/^I enter the  Total priced "\$(\d+)"$/) do |money_customer|
  @money = money_customer
  customer = Customer.instance
  expect(customer.method_seach_name(@name)).to be true
  expect(customer.method_id(@id.to_sym)).to be true
  expect(customer.method_money(@id)).to eq(@money)



end