class Exercises4

  def hashTest
    test= hash
    test={"a"=>1,"b"=>2,"c"=>3,"d"=>4,"e"=>6,"f"=>68,"g"=>13,"h"=>15,"i"=>12,"j"=>10}
    p "#{test.length}"
  end

  def getter
    test= hash
    test={"a"=>1,"b"=>2,"c"=>3,"d"=>4,"e"=>6,"f"=>68,"g"=>13,"h"=>15,"i"=>12,"j"=>10}
    puts "#{test}"
  end

  def key_value
    test= hash
    test={"a"=>1,"b"=>2,"c"=>3,"d"=>4,"e"=>6,"f"=>68,"g"=>13,"h"=>15,"i"=>12,"j"=>10}
    puts "#{test.va}"

  end

end

test = Exercises4.new
test.hashTest
test.getter

