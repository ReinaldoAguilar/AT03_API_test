# Create a class with two methods
# method 1:
#     No arguments defined
# Should ask to the user the number of elements in the array
# According the value inserted ask for each value of the array and push it in a new array
# Return the array
# method 2
# Should receive 1 argument (the array returned in method 1)
# should print the array
#
# 2. Instance the class and call to each method in order to interact with them.
#     Consider that method one shodul return the value that need to be used in second method.

    class Practice2

      def elements

        print "number of elements "
        a=gets.to_i
        b=[]

        a.times do
          print "input the value "
          b.push gets
        end
        return b

      end
      def array_print array
        puts array
      end


end

a=Practice2.new
c=a.elements
a.array_print c