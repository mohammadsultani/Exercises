


def print_multiplication_table(input_number)

    num = 1
    (3*input_number).times{print "*"}
    puts "*"
    until num == (input_number + 1)
        for number in 1..input_number do 
            print "* "
            print (number * num)  
          end
          puts "*"
          num += 1
    end
    (4*input_number).times{print "*"}
    puts "*"
end   

print "pick an input number: "
input_number = gets.chomp.to_i

print_multiplication_table(input_number)






       
       


       