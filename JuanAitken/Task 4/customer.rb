class Customer
  def initialize(name,customer)
    @name=name
    @customer= customer
  end

  def calculate
    puts @customer>=100? "Thanks to be our customer" : "thanks"
  end
end

customerOne= Customer.new "Juan",100
customerTwo= Customer.new "Pablo",10
customerOne.calculate
customerTwo.calculate