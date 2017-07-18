class Father
$fathersMoney
def initialize(money)
	$fathersMoney = money
end
end

class FirtsChild < Father
	def initialize(childMoney)
	@firtschildMoney = childMoney
	$fathersMoney-=@firtschildMoney
	end
	def calculate
	  puts"The firts child took #{@firtschildMoney}"	
	end
end

class SecondChild < Father
	def initialize(childMoney)
	@secondchildMoney = childMoney
	$fathersMoney-=@secondchildMoney
	end
	def calculate
	puts"The second child took #{@secondchildMoney}"
	end
end

class ThridChild < Father
	def initialize(childMoney)
	@thridChildMoney = childMoney
	$fathersMoney-=@thridChildMoney
	end
	def calculate
	puts"The second child took #{@thridChildMoney}"
	end
end


puts "Please set how much money the father has"	
fmoney= gets.chomp.to_i
puts "Now how much money the firts kid needs?"
fkmoney=gets.chomp.to_i
puts "Now how much money the second kid needs?"
skmoney=gets.chomp.to_i
puts "Finally how much money the thrid kid needs?"
tkmoney=gets.chomp.to_i

f = Father.new(fmoney)
fch = FirtsChild.new(fkmoney).calculate()
sch = SecondChild.new(skmoney).calculate()
tch= ThridChild.new(tkmoney).calculate()

puts "Now the father has #{$fathersMoney}"