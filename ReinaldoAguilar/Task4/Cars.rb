
=begin
Create a class called MyCar
1 When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. 
2 Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. 
3. Create instance methods that allow the car to speed up, brake, and shut the car off, this methods should print each action. E.g for speed up:

=end
class MyCars 
  
	  def initialize(year, color, model)
	      @year=year
	      @color=color
	      @model =model
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


end
car=MyCars.new(2017,"Black",2017)
car.speed_up(120)
car.brake(50)
car.shut()
