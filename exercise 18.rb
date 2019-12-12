def better_reverse(input)
    i = (input.length - 1) 
    a = 0
    loop do 
    input.insert(a,input[i]).pop
    a += 1
    break if a == i
    end
    print input
 end 
 better_reverse([11,12,13,14,15])