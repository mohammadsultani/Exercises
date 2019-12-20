# Exercise 48
# Write a method, validate_username? that uses regex to validate a new username
# The input for the method will be a string
# Your method should return true if the string is a valid username, and false if it is not
# Criteria for a valid username is as follows:
# It should start with an alphabet followed by alphanumeric characters
# No special characters allowed
# Username length should be at least 3 characters and should not exceed 20 characters
# Disallow usernames which are just one character repeating

def validate_username?(argument)
   if argument.match(/^[azZcC]{3,}$/)
    return false
   elsif argument.match(/^[A-Za-z][\da-zA-Z]{2,19}$/)
    return true
   else
    return false
   end
end
validate_username? ("")

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, argument, expected)
  actual = validate_username?(argument)
  if actual != expected
    puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
    return false
  end

  puts "Test ##{test_number}: Correct"
  return true
end

# run_tests runs each of the test cases.
def run_tests()
  check_solution(1, "ironman2000", true)
  check_solution(2, "PikapikaPii", true)
  check_solution(3, 'QwertyMaster9876', true)
  check_solution(4, "jay", true)
  check_solution(5, "XxaJchampionJ99axX", true)
  check_solution(6, "cryptoKING", true)
  check_solution(7, "RM5perpost", true)
  check_solution(8, "SYF1coder", true)
  check_solution(9, "3000lovesforyou", false)
  check_solution(10, "Bulb@84", false)
  check_solution(11, "grandmasterthebestchampionever80000", false)
  check_solution(12, "hi", false)
  check_solution(13, "a", false)
  check_solution(14, "u$3r", false)
  check_solution(15, "aaa", false)
  check_solution(16, "zzZZZZZ", false)
  check_solution(17, "cCc", false)
end

# Execute the tests.
run_tests()