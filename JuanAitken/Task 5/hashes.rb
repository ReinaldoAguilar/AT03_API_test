class Hashes
  attr_reader :h
  def ask_for_hash
    @h= {}
    puts"Please insert the lengh of the hash"
    n = gets.chomp.to_i
    n.times do puts "Please insert the key of the hash"
      k = gets.to_i
      puts "please insert the value of the hash"
      b = gets.to_s
     @h[k]=b
    end
  end
  def print_hashes(hashes)
  print "#{hashes}"
  end
  def print_keys
  print "#{@h.keys}\n"
  end
  def print_values
    print "#{@h.values}\n"
  end

  def find_keys ()
    puts "please insert the KEY to search"
    key= gets
    @h.has_key? key
  end

  def find_value ()
    puts "please insert the VALUE to search"
    value = gets
     @h.has_value? value
  end
end

ha= Hashes.new


ha.ask_for_hash
ha.print_hashes ha.h
ha.print_keys
ha.print_values

b =ha.find_value
puts b

a= ha.find_keys
puts a






