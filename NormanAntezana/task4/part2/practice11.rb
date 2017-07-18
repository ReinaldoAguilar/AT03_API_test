# class Practice11
#   def initialize user,pass,travel_data,destination
#     username=user
#     password=pass
#     data=travel_data
#     place=destination
#   end
# end

# USER      |PASSWORD|TRAVEL_DATE|DESTINATION|
# |USER_01|PASS_02      |04/26/2016       |CBBA|
#     You should create the same list for 100 user using random dates and following
# the patter user_01, user_02, etc etc.
#     Destination could be any city of Bolivia.
def city number
  case number
    when 1
      'Cochabamba'
    when 2
      'La paz'
    when 3
      'Oruro'
    when 4
      'Chuquisaca'
    when 5
      'Santa Cruz'
    when 6
      'Pando'
    when 7
      'Beni'
    when 8
      'Potosi'
    else
      'tarija'
  end
end
def data_info

   mont = Random.new.rand(1..12)
   days = Random.new.rand(1..30)
   year = Time.now.year
  res= "/#{mont}/#{days}/#{year}"
  return res


end



def create_user cant
     data=File.open("users1.txt",'w+')
     cont=1
    cant.times do
      prng = Random.new
      ciudad=city prng.rand (1..9)
      # time=Time.at(rand * Time.now.to_i)
      time=data_info
      data.write("#{"User_0"+cont.to_s}|#{"pass_0"+cont.to_s}|#{time}|#{ciudad}|"+"\n")
      cont=cont+1
    end
  data.close
     data2=File.open "users1.txt"
  return data2.read
end



create_user 5