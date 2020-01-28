# Palindrome: Recursion
# Write a method, is_palindrome?, that accepts a number
# The method should use recursion to check if a number provided is a palindrome
# The method should return true or false
# You can create additional nested methods

def is_palindrome?(number , index = 1)
	#code here
	number = number.to_s
    if number[index-1] != number[-index]
        return false
    elsif (number.length / 2) == index
        return true
    elsif number.length == 1
        return true
    end
    is_palindrome?(number , index + 1)
end

puts is_palindrome?(88) == true
puts is_palindrome?(12321) == true
puts is_palindrome?(7992) == false 
puts is_palindrome?(7227) == true
