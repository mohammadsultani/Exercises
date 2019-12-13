def shuffler (input)
    i = input.length
    new_list = []
    loop do 
    new_list.push(input[rand(0..i)])
    break if new_list.length == input.length
    new_list.compact!
    end
    p new_list
end
shuffler([1,2,3,4,5,6,7,8,9])