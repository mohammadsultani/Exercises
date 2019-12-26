# You will write a method only_unique_elements that takes in an Array
# The method returns a new array where all duplicate elements are removed. 
# You must solve this using a hash.

def only_unique_elements(arr)
    # Write your code here
    a = arr.uniq
    d = {}
    i = 0
    loop do
        d[a[i]] = arr.count(a[i])
        i += 1
        break if i == a.length
    end
    l = []
    d.each { |key,value| l.push(key) } 
    return l
end

print only_unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) == ["a", "b", "c"]
puts

print only_unique_elements(['cow', 'goat', 'sheep', 'cow', 'cow', 'sheep']) == ["cow", "goat", "sheep"]
puts