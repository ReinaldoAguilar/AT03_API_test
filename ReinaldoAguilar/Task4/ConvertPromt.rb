=begin
Considered your previous script of convert seconds in minutes and seconds in hours :
Ask from prompt the value of the seconds
Perform the calculation of minutes and hours into one function, return both values
Print the values of the variables.	
=end

class ConvertSecond

	def promt_data
		puts"Enter Seconds"
       seconds=gets
       return seconds
	end

	def calculate(seconds)
		 minutes = (1 * seconds.to_f) / 60
		 horas = (1 * minutes) / 60
		 return minutes, horas

	end

end	

conver_second = ConvertSecond.new
minutos, horas = conver_second.calculate(conver_second.promt_data) 
puts "The minutos : #{minutos} in horas is : #{horas}" 