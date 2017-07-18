=begin
String#chomp operates on the end of strings, takes an optional 'record separator' argument If no arguments are given it will remove carriage returns characters from the end of the string(\r, \n or \r\n).
String#strip operates on the start and end of strings. It takes no arguments.
=end
class Ejemplo
  def chompexamples()
    print "How old are you"
    age = gets.chomp
    print "How tall are you"
    height = gets.chomp
    print "How do you weight"
    weight = gets.chomp

    puts "So, you are #{age} old, #{height} height and #{weight} weight"
  end
  def some_method(string)
    puts string.split(", ").map{|n| n.sub(/(not)/,"").downcase.strip}
  end
  def number( s )
    number = s.to_i
    puts "The number is: #{number}"
  end
end

d = Ejemplo.new()
d.chompexamples
d.some_method("not12345,   notabc  , notone, nottwo, notCAPSLOCK")
d.number("12345")