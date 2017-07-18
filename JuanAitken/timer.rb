class Timer
  def calculate(seconds)
    minutes = seconds/60
    hours = minutes/60
    days = hours/24

    puts "#{seconds} seconds are #{minutes} minutes"
    puts "#{seconds} seconds are #{hours} hours"
    puts "#{seconds} seconds are #{days} days"

  end
  timer = Timer.new()
  timer.calculate(3600*24)
end