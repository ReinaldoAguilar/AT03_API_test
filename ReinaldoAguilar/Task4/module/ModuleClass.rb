require_relative 'GreetDifferent'
require_relative 'ModuleBye'

class ModuleClass

	include GreetDifferent
	include ModuleBye

    def printGreet

		GreetDifferent.greet_friends
		GreetDifferent.good_night
		GreetDifferent.good_afternoon
    	
    end

    def printBye
    	ModuleBye.bye
    	ModuleBye.later
    	ModuleBye.take_care
    end


end

module_class = ModuleClass.new
module_class.printGreet
module_class.printBye