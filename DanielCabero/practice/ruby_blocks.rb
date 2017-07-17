def test_block
  puts "you are in the method"
  yield
  puts "you are again back to the method"
  yield

end

test_block {puts "you are in the block"}

value_1=10
5.times do |value_2,value_1|
  value_1=value_2
  puts "value_1 inside the #{value_1}"
end

puts "value_1 outside the block:#{value_1}"