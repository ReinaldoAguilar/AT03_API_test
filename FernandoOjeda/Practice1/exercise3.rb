=begin
Create a script with some variables that convert seconds in minutes, seconds in hours and second in days.
Do not just type in the measurements. Please work out the arithmetic in Ruby.
Create variable to assign the values
Use the variable name to print the result.
=end

seconds = 864000
minutes = seconds / 60
hours = minutes / 60
day = hours / 24

puts "#{ hours } h #{ minutes } m #{ day } days"