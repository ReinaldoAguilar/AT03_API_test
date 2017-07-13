
require_relative "C:/Users/Administrator/Desktop/Api Test/project/AT03_API_test/NormanAntezana/Task3/module/greets.rb"

class PracticeModule
  include Bye
  include Greets
  def dd
    puts Bye.bye
    puts Bye.care
    puts Greets.afternoon
    puts Greets.night
  end
end
value=PracticeModule.new
puts value.dd
