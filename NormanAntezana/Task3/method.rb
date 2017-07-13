def customer_id name ,customer_id
  value=name.upcase
  value2=customer_id>100?"Thanks to be our customer":"thanks"
  puts value
  puts "You are our customer  #{customer_id} #{value2}"

end

customer_id "Norman",102
customer_id("Yuri",90)


