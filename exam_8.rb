# You will write a method, pairs_to_zero that takes in an array of unique numbers. 
# The method should return the number of pairs of elements that sum to 0.

def pairs_to_zero(nums)
    # Write your code here
    c = []
    a = nums.select { |n| c.push(n) if n < 0 }
    nums.delete_if { |n| c.push(n) if n < 0 }
    i = 0 
    pairs = 0
    a = a.map { |n| n*-1 }
    loop do 
        if nums.count(a[i]) > 0
        pairs += 1
        end
        i += 1
        break if i == a.length
    end
    return pairs
end

puts pairs_to_zero([ 2, 5, 11, -5, -2, 7 ]) == 2
puts
puts pairs_to_zero([ 21, -23, 24 -12, 23 ]) == 1
puts