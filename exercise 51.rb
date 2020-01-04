# In Class Exercise: Binary Search
# Write a method, binary search(array, target), that accepts an array and another input as target
# The method should use the binary search algorithm to return the position of the element where the target is found

# Pseudocode for binary search.
# 1-Take an array and a target as input.
# 2-Compare the middle element of the array with the target.
# 3-if it is same, output the index number.
# 4-if it is bigger ,Compare the first half middle element with the target.
# 5-if it is smaller ,Compare the second half middle element with the taget.
# 6-Continue this process until the target is found. 
def binary_search(target, array)
	#Your code here
	index = array.length / 2
	lo = 0
	hi = array.length - 1
	while array[index] != target && array.include?(target)
		if array[index] > target
			hi = index - 1
		 index = (lo + hi) / 2
		elsif array[index] < target
			lo = index + 1
			index = (lo + hi) / 2
		end
	end
	if array[index] == target
		return index
	else
		return -1
	end 
end
test_array = (100..200).to_a
puts binary_search(135, test_array) == 35

test_array = [13, 19, 24, 29, 32, 37, 43]
puts binary_search(35, test_array) == -1