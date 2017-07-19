class Exercise2

  def noDefined
    Array.new ["yes","no","whats the question","test","apitest"]
  end

  def defined list
      p list
  end
end


test =Exercise2.new
list= test.noDefined
test.defined list