# Considered your previous script of convert seconds in minutes and seconds in hours :
#     Ask from prompt the value of the seconds
# Perform the calculation of minutes and hours into one function, return both values
# Print the values of the variables.
def convert_minutesandhour number
  valueA=number/3600
  valueB=number%3600/60
  return valueA,valueB
end
print "input second"
value=gets.to_i
value_hour,value_minute=convert_minutesandhour value
puts "time in hour is #{value_hour} and minutes #{value_minute}"




# value_hour,value_minute=convert_minutesandhour
puts "time in hour is #{value_hour} and minutes #{value_minute}"

