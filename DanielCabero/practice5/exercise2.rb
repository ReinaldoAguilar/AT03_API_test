class Exercise2

  def initialize maps
    @users= hash
    @users = maps
  end

  def getValuesNumbers
    @users.each_key {|key |  key=~/1(.*)/
      puts "#{key}"
    }
  end

  def numbersGroups
    @users.each_key {|key| result = case key
                                     when 0..25 then puts "Use belong Group 1"
                                     when 26..50 then puts "Use belong Group 2"
                                     when 51..75 then puts "Use belong Group 3"
                                     when 76..100 then puts "Use belong Group 4"
                                     else puts "the Id no between in the range "
                                    end
    }
  end

  def getList
    @users.each_key {|key | puts "#{key}" }
  end

end

list = hash
list={1=>"a",12=>"b",52=>"c",82=>"d",26=>"e",25=>"f",36=>"g",99=>"h",50=>"i",72=>"j"}
test = Exercise2.new list
test.getValuesNumbers
test.getList
test.numbersGroups


