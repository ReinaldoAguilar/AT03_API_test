


class Exercise2
attr_reader :idName
  def create_id_userName
    puts "Insert the size of the hash"
    size = gets.chomp.to_i
    @idName = {}
    size.times do
      puts "Insert the id key for the user"
      idkey = gets.chomp
      puts "Insert the userid value"
      idvalue = gets.chomp
      puts "Insert the username key"
      namekey = gets.chomp
      puts "Insert the username value"
      usernamevalue = gets.chomp
      @idName[idkey] = /[1-100]/.match(idvalue)
      @idName[namekey] = /[a-z{1,8}]/.match(usernamevalue)
      print @idName
    end
  end
  def search_userId(idname)
    puts "Insert a number"
    @number = gets.chomp
    result = idname.map do |key, value|
      /id/.match(key)? /@number/.match(value): nil
    end
    return result
  end
def search_username(idname)
  puts "Insert a character"
  @character = gets.chomp
  resultname = idname.map do |key, value|
    /name/.match(key)? /@character/.match(value): nil
  end
  return resultname
end
end

d = Exercise2.new
d.create_id_userName
idname = d.idName
d.search_userId(idname)
d.search_username(idname)
