class MyCar

  def initialize year,color,model
    @year=year
    @color=color
    @model=model
    @speed=0
  end
  def speed_up(number)
    @speed += number
    puts"You accelerate to  #{number} mph."

  end
  def break(number)
    @speed  -= number
    puts @speed>0?"You decelerate to  #{number} mph.":shut_car_off
  end
  def shut_car_off()
    @current_speed= 0
    puts"You stop the car"
  end
end
var=MyCar.new 2000,"black", "toyota"
var.speed_up 100
var.break 10
var.shut_car_off
