

def listNumber
number = Array.new 20 do | e | e*2
            end
puts "#{number}"
end

def firstList
  number = Array.new 20 do |e|e*3
        end
    puts "#{number.first}"
end


def lastList
  number = Array.new 20 do |e|e*3
  end
  puts "#{number.last}"
end


def listCommons numbers
  number = Array.new 20 do |e|e*3
  end
  puts "#{number<=>numbers}"
end
def listattrCommons numbers
  number = Array.new 20 do |e|e*3
  end
  puts "#{number&numbers}"
end

 show = listNumber
 fistr = firstList
 last = lastList
numbers= Array.new 20 do|e|e*4 end
commons = listCommons numbers
sameAtrributes =listattrCommons numbers