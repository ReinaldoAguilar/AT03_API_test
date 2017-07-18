=begin
Write 1 Method called customer_id
This Methods
should receive 2 arguments : name and customer_id
Using short-if expression evaluate the id value according :
Only if ID is greater than 100 print the message “Thanks to be our customer” otherwise only print “Thanks”
change to uppercase the name
=end

class Exercise
  def customer_id(name, id)
    puts id > 100? "Thanks to be our customer": "Thank"
    puts "Your are our customer whit the name #{name.upcase} with the id #{id}"
  end
end

d = Exercise.new
d.customer_id("Fernando", 5900277)