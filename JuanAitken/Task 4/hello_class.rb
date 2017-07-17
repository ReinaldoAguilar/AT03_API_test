require_relative "GreetsModule"
require_relative "GreetsModule2"

class HelloClass
  include Greets
  include Byes
  def initialize()

  end
end


hello = HelloClass.new()
hello.hello_greet
hello.good_bye_bye
hello.good_greet
hello.how_greet
hello.see_bye