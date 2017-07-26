Given(/^Having a computer in the lab$/) do
  puts "Exist the computer on lab"
end

When(/^the cables are connected$/) do
  puts "conneted the computer"
end

And(/^press the power button$/) do
  puts "start the computer"
end

Then(/^the computer could be turned on$/) do
  puts "The computer is turned on OK"
end

Given(/^that you have open the registration template$/) do
  puts "The template daile report"
end

When(/^to fill out the form$/) do
  puts "daily Filled"
end

Then(/^fill report$/) do
  puts "Daily Report fill completed "
end

Given(/^that you have open the email page$/) do
  puts "open the email page"
end


When(/^Fill in the fields:$/) do |listEmail|

  @arrayEmail=listEmail.raw
end

Then(/^Fill in the fields should look like this:$/) do |listEmail|
  # table is a table.hashes.keys # => [:email]
  listEmail.diff!(@arrayEmail)
end