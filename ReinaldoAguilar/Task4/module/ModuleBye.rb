module ModuleBye


    def ModuleBye.bye

		block_greet { "Good bye" }
		
	end

	def ModuleBye.later

		block_greet { "Good later" }
		
	end

	def ModuleBye.take_care

		block_greet { "Take Care" }
	end
	
end

def block_greet
	puts yield
end