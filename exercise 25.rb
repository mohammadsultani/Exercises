def nth_power_of_evens(array,power)
    list = array.select { |x| x%2==0 }
    list.sort!
    v = list.length
    i = 0
    result = []
    loop do 
     a = Array.new(power,list[i])
     result.push(a.inject(:*))
     i += 1
     break if i == v
    end
    p result
end
     
nth_power_of_evens([1,2,2,4,5],4)