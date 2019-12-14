def adult_in_group?(array)
    i = array.length
    b = 0
    a = array[0][:age].to_i
    until b == i || a >= 18
        a = array[b][:age].to_i
        b += 1
    end   
    if a >= 18 
      p true
    else
     p false
    end  
end
adult_in_group?([{name: "sam", age: "29"},{name: "ali", age: "12"}])