# Exercise 49
# Given an input string with alphanumeric characters, extract the integers into a list and print them out in the order of occurrence.
# If there is a dash (-) immediately before a number, it will be deemed as a negative number and it is a different number from the positive
# Include the number of times the integer occured in total in the entire string for each integer

# Your output should be:
# The numbers found are:
# -23: 3 times
# 1: 3 times
# 578: 2 times
# -12: 3 times
# 7: 4 times
# 23: 1 time
# … etc

def extract_integer(input_string)
    #write your code here
    
   numbers = input_string.scan(/-?[0-9]+/) 
   p numbers
   number = numbers.uniq
    i = number.length
    x = 0
   loop do 
   puts "#{number[x]}:#{numbers.count(number[x])} times" 
   x += 1
   break if x == i
   end
end

input = "dS-23a1lt578jmnw-1n-23bsi-12p7nbh7asd23mbj578frew1a7oo903o7mk12arr909oposdf435rr"

extract_integer(input)
