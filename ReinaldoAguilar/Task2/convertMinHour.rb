=begin
  Create a script with some variables that convert seconds in minutes, seconds in hours and second in days
=end
numberCalculate = 60

# variable on seconds convert
seconds=numberCalculate * numberCalculate
minutes=(1 * seconds) / numberCalculate
horas=(1 * minutes) / numberCalculate
days=(1 * horas) / 24
puts"The seconds : #{seconds} in minutes is : #{minutes}"
puts"The seconds : #{seconds} in hours is : #{horas}"
puts"The second : #{seconds} in days is : #{days}"