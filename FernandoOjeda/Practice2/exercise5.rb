class Exercise5
  def initialize(name, age)
    @name = name
    @age = age
  end
  def calculateAge()
      minutes =525600
      resp = @age * minutes
      puts "The age in minutes is: #{resp} minutes"
  end
end

d = Exercise5.new(Eduardo, 25)
d.calculateAge

