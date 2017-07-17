
module GreetDifferent

	def GreetDifferent.greet_friends

		block_greet { "Hi my friends" }
		
	end

	def GreetDifferent.good_night

		block_greet { "Good night" }
		
	end

	def GreetDifferent.good_afternoon

		block_greet { "Good Afternoon" }
		
	end
end

def block_greet
	puts yield
end
