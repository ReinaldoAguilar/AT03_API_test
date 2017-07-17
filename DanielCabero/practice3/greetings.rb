
module Greetings

  GREETS="hello"

  def Greetings.hello
    puts "Hello!"
  end

  def Greetings.goodMornig
    puts "Good morning!"
  end

  def Greetings.goodNigth
    puts "Good nigth!"
  end
end

module Byes
  def Byes.bye
    puts "Bye!"
  end

  def Byes.goodBye
    puts "see you later!"
  end

  def Byes.seeLater
    puts "Good bye!"
  end

end

hi=Greetings.hello
hi=Greetings.goodMornig
hi=Greetings.goodNigth

hello=Byes.goodBye
hello=Byes.bye
hello=Byes.seeLater
