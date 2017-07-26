Given(/^the flight ([a-zA-Z0-9]+) is leaving today$/) do |number_flight|
puts number_flight
end

When(/^Registering the "([^"]*)" Path$/) do |way|
  puts way
end

And(/^register the arrival "([^"]*)"$/) do |hour_arrive|
  puts hour_arrive
end

Then(/^the flight arrives at "([^"]*)"$/) do |city|
  puts city
end