# You will write a method element_count that takes in an Array
# This method returns a hash representing the count of each element in the array.

def element_count(arr)
    # Write your code here
    array = arr.uniq
    result = {}
    i = 0
    x = array.length
    loop do
    result.store(array[i],arr.count(array[i]))
    i += 1
    break if i == x
    end 
return result
end


puts element_count(["a", "b", "a", "a", "b"]) == {"a"=>3, "b"=>2}
puts
puts element_count(["red", "red", "blue", "green"]) == {"red"=>2, "blue"=>1, "green"=>1}
puts