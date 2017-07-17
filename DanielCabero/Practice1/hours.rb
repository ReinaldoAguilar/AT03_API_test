years=24*3600*365
day=24*3600
hour = 3600
min=60

#the variable is changes for the seconds.
seconds= 100000000

#this show the seconds in days,hours and minutes.
puts "this in #{seconds} is equals #{seconds/years} years: #{(seconds%years)/day} days: #{(seconds%day)/hour} hours: #{(seconds%hour)/60} minites: #{seconds%min} seconds"

#this method is the show the seconds in Days , hours and minutes.
puts "this in #{seconds} in days is: #{seconds/day}"
puts "this in #{seconds} in hours is: #{seconds/hour}"
puts "this in #{seconds} in minutes is: #{seconds/min}"
