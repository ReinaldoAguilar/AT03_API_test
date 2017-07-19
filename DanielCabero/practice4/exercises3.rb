require 'singleton'
class Exercises3
  include Singleton
  def noDefined
    list= Array.new 20 do |e| e+1 end
    alphabetica = Array  ["a","b","c","d","e","f","g","h","i","j"]
    alphaNumber= list+alphabetica
    return list , alphabetica
  end

  def listArray list1, list2
    list = list1&list2
    puts "#{list}"
  end

def listArray2 list1, list2
       puts "#{list1.first} , #{list2.last}"
  end

  def listArray3  list1, list2
    first , last =Array.new
    first=list2
    last = list1
     list= Array [first.first,last.last]
    end
  def listArray6  list1, list2
    first , last =Array.new
    first=list2
    last = list1
     list= Array [first.first,first.last,last.first,last.last]

  end

  def listArray4 list1
    puts list1
  end

end

test = Exercises3.instance
test1 = Exercises3.instance

list1,list2 = test.noDefined
puts "#{test.listArray list1, list2}"
puts "#{test.listArray2 list1 ,list2}"
puts "#{test.listArray3 list1 ,list2}"
list5 = test.listArray3 list1,list2
puts "#{test.listArray4 list5}"
puts "#{test.listArray4 list5}"

