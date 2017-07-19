def perform_load
  file = File.open('traveling.txt', 'w+')
  file.truncate 0
  file.write("|USER|PASSWORD|TRAVEL_DATE|DESTINATION|\n")
  password = 1
  100.times do
    file.write("|USER_#{password}|PASS_#{password}|#{aleatory_date}|#{aleatory_city}|\n")
    password += 1
  end
  file.close
end

def aleatory_date
  year = Time.now.year - rand(1)
  month = rand(12)
  day = rand(31)
  "#{month}/#{day}/#{year}"
end

def aleatory_city
  city = ['La Paz', 'Cochabamba','Santa Cruz','Beni','Pando','Potosi','Oruro','Tarija','Sucre']
  city[rand(9)]
end


perform_load