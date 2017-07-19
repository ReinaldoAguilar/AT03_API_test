require_relative 'ModuleUtil'

class File_class2

include ModuleUtil
  def perform_load_file

    file = File.open('Bolicia.txt', 'w+')
    file.truncate 0
    file.write("|USER|PASSWORD|TRAVEL_DATE|DESTINATION|\n")

    100.times do |user_pass|
      file.write("|USER_#{user_pass}|PASS_#{user_pass}|#{aleatory_time}|#{aleatory_city}|\n")
    end
    file.close
  end

end

fileclass = File_class2.new
fileclass.perform_load_file