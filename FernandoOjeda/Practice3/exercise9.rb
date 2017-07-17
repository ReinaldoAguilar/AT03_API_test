=begin
=end

module Greets

  def greetOne()
    puts "Hi friends"
  end
  def greetTwo()
    puts "good night"
  end
  def gretThree()
    puts "good afternoon"
  end
end

module Bye

  def byeOne()
    puts "good bye"
  end
  def byeTwo()
    puts "see you later"
  end
  def byeThree()
    puts "take care"
  end
end

class Sample
  include Greets
  include Bye
  def definition()
    puts "This are the result of the mothods"
  end
end

d = Sample.new
d.greetOne
d.greetTwo
d.gretThree
d.byeOne
d.byeTwo
d.byeThree