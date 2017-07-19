class Exercise5

  def hashTest
    test= hash
    test={"name1"=>1,"name2"=>2,"name3"=>3,"name4"=>4,"name5"=>6,"name6"=>68,"name7"=>13,"name8"=>15,"name9"=>12,"name10"=>10}

  end

  def getValue
    puts "#{test.map {|i|i.value}}"
  end

  def getAll
    p test
  end

  def getId
    p test.map {|i|i.id}
  end





end