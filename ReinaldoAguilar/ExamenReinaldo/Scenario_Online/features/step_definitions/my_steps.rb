Given(/^I have \$(\d+) in my account$/) do |money|
  @account = money.to_i
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |money_withdraw|
  @account -=money_withdraw.to_i
end

Then(/^I should recive \$(\d+) cash$/) do |cash|
  puts "The cash recive is : %s"%cash
end

And(/^the blance of my account shoud be \$(\d+)$/) do |balance|
  expect(@account).to eq(balance.to_i)
end