# You will write a method, combinations that takes in an Array of unique elements
# The method should return a 2D array representing all possible combinations of 2 elements of the array.

def combinations(arr)
    # Write your code here
   return arr.combination(2).to_a
end

print combinations(["a", "b", "c"]) == [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]) == [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts