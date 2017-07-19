require 'singleton'
class Example
 include Singleton

  def initialize
    @numbers=2
  end

  def newnumber
    @number=20
  end
  def wnumber
    @number
  end

end

b=Example.instance
p b.newnumber

file_example= File.open