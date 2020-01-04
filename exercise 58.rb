# Write a method, compress_string(string), that accepts a string as input
# The method should return a new string where streaks of consecutive characters are compressed to a number followed by the character.
# For example "aaabbc" is compressed to "3a2bc".

# Write Your method code here
# Psuedocode for compress string.
# 1-Take a string as an input.
# 2-Create a new empty string as a result.
# 3-compare the first letter of the string with the following letters. 
# 4-If it occurs consecutively more than once, then.
# 4a-Push the number of occurence and the letter into the result.
# 5-If it occurs consecutively only once, then.
# 5a-Push the letter only to the result string.
# 6-Repeat this process for all the letters in string.       

def compress_string(string)
string.chars
index = 0 
result = ""
while index < string.length
    if string[index] == string[index+1]
        occurence = 1
    while string[index] == string[index+1]
        index += 1
        occurence += 1
    end
    result << "#{occurence}#{string[index]}"
    occurence = 0
    index += 1
    else string[index] != string[index+1]
        result << "#{string[index]}"
        index += 1
    end
end
    return result
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, string, expected)
    actual = compress_string(string)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1,"aaabbc", "3a2bc")
    check_solution(2, "xxyyyyzz", "2x4y2z")
    check_solution(3, "qqqqq", "5q")
    check_solution(4, "mississippi", "mi2si2si2pi")
end

# Execute the tests.
run_tests()