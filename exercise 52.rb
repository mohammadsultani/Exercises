# Write a method, linear_search(array, target), that accepts an array and another input as target
# The method should use the binary search algorithm to return the position of the element where the target is found
# You may not use any Array or Enum methods except length or size
# You may not use any Enum derived iterations, only for, while or until

# Psuecode for linear search.
# 1-Take an array and another input as target.
# 2-Compare the first element of the array with the target.
# 3-If it is same, output the index number.
# 4-If it is different, compare it with the next element.
# 5-Continue this process untill the target is same with the selected array elememt.    
def linear_search(target, searchfrom)
	#Your code here
	index = 0
	while searchfrom[index] != target && index < searchfrom.length
		if searchfrom[index] != target
			index += 1
		end
	end 
	if searchfrom[index] == target 
		return index
	else
		return "the number not found"
	end 
end

random_numbers = [6,29,18,2,72,19,18,10,37]
p linear_search(18, random_numbers)
p linear_search(9, random_numbers)

