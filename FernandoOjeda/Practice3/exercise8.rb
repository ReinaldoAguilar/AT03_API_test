=begin
=end

def multiple_return_sintaxis(seconds)
  minutes = seconds / 60
  hours = minutes / 60
  return minutes, hours
end

minutes_calculated, hours_calculated= multiple_return_sintaxis(864000)
puts "The result from seconds to minutes are #{minutes_calculated} and seconds to hours are #{hours_calculated}"