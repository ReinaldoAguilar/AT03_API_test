# Add a method that is going to ask for a username :
#     Need to be write with lowercase letter (a-z), number (0-9), an underscore
#      Add a method that is going to ask for a password:
#        Need to be write with lowercase letter (a-z), number (0-9),
#         letter (A-Z) and the length have to be between 8 and 16 characters
#        Add a method that is going to ask for email
#    Need to have the format anything@domain.com (could accept
#         also country e.g. anything@domain.com.bo)



def user_name
  print "user name "
 user=gets.chomp.to_s
     value=/^(?=.*[0-9])(?=.*[a-z])(?=.*[_]).{4,}$/.match(user)


end
def password
  print "user pass "
  user=gets.chomp.to_s
  valuepas=/ ^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,16}$/.match(user)



end

def email
  print "user email "
  user=gets.chomp.to_s
  valuemail=/ [a-z0-9._%+-]+@[a-z0-9-]+.+.[a-z]{2,4}/.match(user)


end


 user_name
 password
 email