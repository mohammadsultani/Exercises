def sum_of_evens(array)
    a = array.flatten.select{ |x| x%2==0 }.inject do |acc,el|  
           acc + el
           end
      p a
end
sum_of_evens([1,2,4,6,8,10])