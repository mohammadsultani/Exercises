i = 0
loop do
    i += 1
    if i % 3 == 0
        print "fizz,"
    elsif i % 5 == 0
        print "buzz,"
    elsif i % 15 == 0
    else
    print i 
    print ","
    end
    break if i == 100
     
end



