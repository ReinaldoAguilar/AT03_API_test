=begin
Assume that you need to perform load testing for an application.
You need to create a list similar to :
|USER      |PASSWORD|TRAVEL_DATE|DESTINATION|
|USER_01|PASS_02      |04/26/2016       |CBBA|
You should create the same list for 100 user using random dates and following the patter user_01, user_02, etc etc.
Destination could be any city of Bolivia.
=end

class Exercise6
  def generate_datas
    puts "Insert the name and extention of the file"
    filename = gets.chomp
    file_create = File.open(filename, 'w+')
    file_create.truncate(0)
    file_create.write("|USER |PASSWORD |TRAVEL_DATE|DESTINATION|\n")
    id = 1
    100.times do
      file_create.write("|USER_#{id}|PASS_#{id}|#{travel_data_random}|#{destination_random}|\n")
      id += 1
    end
    file_create.close
    file_create = File.open(filename)
    print file_create.read
  end

  def travel_data_random
    month = rand(12) + 1
    day = rand(30) + 1
    year = Time.now.year
    data = "#{month}/#{day}/#{year}"
    return data
  end

  def destination_random
    city = ["CBBA", "SANTA CRUZ", "BENI", "PANDO", "ORURO", "LA PAZ", "TARIJA", "SUCRE", "POTOSI"]
    city[rand(city.length)]
  end
end

d = Exercise6.new
d.generate_datas


