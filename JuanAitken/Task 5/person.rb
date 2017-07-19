class Person
  attr_accessor :h
  def register_people
    @h ={}
    puts "Please insert how many people do you want to register"
    n= gets.to_i
    n.times do puts "Insert the Name of the Person"
       v= gets.to_s.upcase
      puts "Now insert the ID"
       k= gets.to_i
      @h[k]=v
    end
  end

  def print_people
    puts "The names of the people are #{@h.values}"
    puts "The ID are #{@h.keys}"
  end

  def good_bye
    @h.values.each do |i| puts "good bye #{i}"
  end
  end
end

a= Person.new

a.register_people
a.print_people
a.good_bye