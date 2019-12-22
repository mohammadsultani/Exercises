# You will write a method more_than_once that takes in a String
# The method will return an array containing the characters that appeared more than twice in the string.
def more_than_once(string)
    # Write your code here
    a = string.length
    array = []
    i = 0
    loop do 
        array.push(string[i])
        i += 1
        break if i == a 
    end
    p array
    array1 = array.uniq
    y = array1.length
    x = 0
    result = []
    loop do 
        if array.count(array1[x]) > 2
            result.push(array1[x])
        end
        x += 1
        break if x == y 
    end       
return result
end
more_than_once("helllo")

print more_than_once('mississippi') == ["i", "s"]
puts

print more_than_once('bootcamp') == []
puts