def roman_numeral(input_number)
if input_number > 4999 
    puts "Please choose a number below 5000!"
else m = input_number/1000
    m.times { print "M" }
    input_number = input_number%1000
    if input_number >= 900
        print "CM"
        input_number= input_number%100
    end
    if input_number >= 500
        print "D"
        input_number= input_number%500
    end
    if input_number >= 400
        print "CD"
        input_number = input_number%100
    end
    if (input_number >= 100 && input_number < 400)
        c = input_number/100
        c.times { print "C"}
        input_number = input_number%100
    end
    if (input_number >= 90 && input_number < 100)
        print "XC"
        input_number = input_number%10
    end
    if  input_number >= 50 && input_number < 90
        print "L"
        input_number = input_number%50
    end
    if (input_number >= 40 && input_number < 50)
        print "XL"
        input_number = input_number%10
    end
    if (input_number > 10 && input_number < 40)
     x = input_number/10
     x.times { print "X" }
     input_number = input_number%10
    end
    if input_number == 9
        print "IX"
    end
    if (input_number >= 5 && input_number < 9)
        print "V"
        input_number = input_number%5
    end
    if input_number == 4
        print "IV"
    end
    if input_number < 4
        i = input_number/1
        i.times {print "I"}
    end
end
end
roman_numeral(4780)