module Greets1
  def hi
    puts "Hi Friend"
  end
  def night
    puts "good night"
  end
  def afternoon
    puts "good night"
  end
  def morning
    puts "good morning"
  end

end

module Bye1
  def bye
    puts "good bye"
  end
  def later
    puts "see you later"
  end
  def care
    puts "take care "
  end

end
class PracticeModule
  include Bye1
  include Greets1
  def dd

  end
end
value=PracticeModule.new
 value.bye
value.care
value.hi








