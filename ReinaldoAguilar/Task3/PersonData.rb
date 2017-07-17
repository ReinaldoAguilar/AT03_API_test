class PersonData

	 def informationPerson()
	 	puts"Name Person please:"
	 	name=gets
	 	puts"your Age ?:"
	 	age=gets
	 	return age
	 end
	 
end

class Calculate
	
	def calculateAgeMinute(agePerson)
		result = agePerson.to_i * 365 * 24 * 60
	 	puts"In Minutes my age is:%10s" % result
	end
end

a=PersonData.new  
agePerson=a.informationPerson

c=Calculate.new
c.calculateAgeMinute(agePerson)  