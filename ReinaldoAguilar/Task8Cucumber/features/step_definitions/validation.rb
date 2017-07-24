Given(/^A gmail form page$/) do
  puts "This the gmail form"
end


When(/^I enter the data "(\D+)"$/) do |arg|
  puts "This is the the name o last %s" %arg
end

And(/^I enter the username "(\w*)"$/) do |arg|
  puts "This is the the username %s" %arg
end

And(/^I enter the password "((?=.+[A-Za-z])(?=.+\d).{8,})"$/) do |arg|
  puts "This is the the password %s" %arg
end

And(/^I enter the birday "(0?\d{1,2}[\/|-]0?\d{1,2}[\/|-]\d{2,4})"$/) do |arg|
  puts "This is the the confirm password %s" %arg
end

And(/^I enter the gender "(Male|Female)"$/) do |arg|
  puts "This is the gender %s" %arg
end

And(/^I enter the cellphone "(\d+)"$/) do |arg|
  puts "This is the cellphone %s" %arg
end

And(/^I enter the currentEmail "([a-z0-9._-]+@[a-z0-9.-]+\.[a-z]{2,3})"$/) do |arg|
  puts "This is the currentEmail %s" %arg
end