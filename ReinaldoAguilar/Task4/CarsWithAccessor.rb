
=begin 
Create a new script using the same class created before but now :
 Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.

=end
class MyCars 

	attr_accessor:color_attr
	attr_reader:year_attr
  
	  def initialize(year, model)
	      @year_attr=year
	      @model=model
	      @current_speed =0
	      
	  end

	  def speed_up(speed_car) 
	      @current_speed += speed_car 
	      puts "You accelerate to  #{speed_car} mph." 
	  end
	  def brake(speed_car) 
	      @current_speed -= speed_car 
	      puts "You desaccelerate to  #{speed_car} mph." 
	  end
	  def shut() 
	      @current_speed = 0 
	      puts "You shut the car" 
	  end

	  def print_Color_Car
	  	puts "The color is #{color_attr}"
	  	
	  end
	  def print_Year_Car

	  	puts "The year id #{year_attr}"
	  	
	  end


end
car=MyCars.new(2017,98)

car.speed_up(120)
car.brake(50)
car.shut()

car.color_attr = "Black"

car.print_Color_Car
car.print_Year_Car

