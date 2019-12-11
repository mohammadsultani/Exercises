def reverse_array(input)
    i = input.length
    reverse_array = []
    loop do 
        i -= 1
    reverse_array.push(input[i]) 
    break if i == 0  
    end
    print reverse_array
end 
reverse_array([1,2,3,4,5])
