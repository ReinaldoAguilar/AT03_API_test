

def calcSec seconds
  minutes= seconds/60
  hours = seconds/3600

  return minutes,hours
end

calmin,calhour = calcSec 60000
puts "the calculate in minutes is:#{calmin}, in hours is #{calhour}"
