
Given(/^you have (\d+) apple$/) do |number_apple|
 @apple = number_apple.to_i
end

When(/^you eat (\d+) apples? in my classroom$/) do |number_apple_eat|
  @apple -= number_apple_eat.to_i
end

And(/^you eat (\d+) apples in my classroom, (\d+) apples in you house$/) do |classroom, house|
  @apple -= (classroom.to_i+house.to_i)
end

Then(/^The apple balance could be (\d+)$/) do |result_apple|
  expect(@apple).to eq(result_apple.to_i)
end

And(/^you eat (?:[a-z]+) apples in the square$/) do
  puts "er"
end
