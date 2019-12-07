puts "coose a number "
number = gets.chomp.to_i
if number > 0 
    until number == 0
        number -= 1
        puts number 
        sleep(0.3)
    end
else number < 0 
    until number == 0
        number += 1
        puts number
        sleep(0.3)
    end 
end