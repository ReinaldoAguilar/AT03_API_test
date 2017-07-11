varnumber=800
timeSecond=172800
time=236


divHour=timeSecond/3600
divSecond=60
divMinutes=timeSecond/divSecond
divDays=timeSecond/3600/24

puts "800 the number is equals to #{time/3600} hours and #{time%3600/60}minutes and #{time%60}"
puts "236 the number is equals to #{timeSecond/3600} hours and #{timeSecond%3600/60}minutes and #{timeSecond%60}"
puts "172800 seconds have "+"#{divHour} hour"
puts "172800 seconds have "+"#{divMinutes} minuts"
puts "172800 seconds have "+"#{divDays} days"

puts Time.at(timeSecond).utc.strftime("%H:%M:%S")
