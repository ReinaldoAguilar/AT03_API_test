
Given (/^Insert the ZipCode (\d*) for the form$/) do|arg|
  puts "Only digit"
end

When(/^Insert the Username (\w+) for the form$/) do |arg|
  puts "Only lower case"
end

And(/^I set country to (\D+)$/) do |arg|
  puts "Only lower case and numbers,up case"
end