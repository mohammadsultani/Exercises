# Number Patterns: Recursion
# Given a number n, make an array of a list of numbers without using any loop.
# The sequence of numbers should be from the number n, reduced by 5 each print, to 0 or the first negative number, and then increased by 5 each print, back up to the number n.
# For example, if the number n is 20, it would return:
# [20, 15, 10, 5, 0, 5, 10, 15, 20]
# You have to use recursion in this problem
# You have to determine what are the arguments required for print_pattern
# You can create additional nested methods if you need to

def make_pattern(array = [], number) # Define a method with two paremeter one array which will be the output and another one which is the given number.
    if number <= 0 # This is our base case it will stop if the number is 0 or less than that.
        array << number #Then we will push the number in to the array.
		array << array.reverse #Now we will push the array in to it self, But in reverse order.
		array.flatten! # At this two point we have a nested array it should be turn to one array.
        array.delete_at(array.length / 2) # Now there is a problem in our array the middle element of the array is repeated twice.So we delete one.
        return array # The array is ready to be called.
    end
    array << number # It pushes the number in to array 
    make_pattern(array , number - 5) # This will make our method recursive.It will deduct 5 from our number at each time the method execute.
end

puts make_pattern(20) == [20, 15, 10, 5, 0, 5, 10, 15, 20]
puts make_pattern(17) == [17, 12, 7, 2, -3, 2, 7, 12, 17]
puts make_pattern(3) == [3, -2, 3]
puts make_pattern(0) == [0]