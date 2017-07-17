def converter(seconds)
  hours = seconds / 3600
  minutes =  seconds / 60
  return hours , minutes
end
puts"Plase insert the seconds to convert"
seconds1=gets.chomp.to_i
hours, minutes = converter(seconds1)

puts "There are #{hours} hours"
puts "There are #{minutes} minutes"






