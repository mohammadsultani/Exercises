# Exercise 47
# You will write a method, format_date that changes dates in the format 2019-06-17 
# to the format 17.06.2019. You must use a regular expression.
# Your method should accept a string
# The method should return a string

# Write Your method code here
def format_date(argument)
  if argument =~ (/\//)
  p argument
  else     
a = argument.scan(/\d\d$/)
b = argument.scan(/^\d{4}/)
argument = argument.gsub(/^\d{4}/ , a[0])
argument = argument.gsub(/\d\d$/ , b[0])
argument = argument.gsub(/-/ , ".")
  end
end 
format_date("2019-06-17")

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, argument, expected)
  actual = format_date(argument)
  if actual != expected
    puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
    return false
  end

  puts "Test ##{test_number}: Correct"
  return true
end

# run_tests runs each of the test cases.
def run_tests()
  check_solution(1, "2019-06-17", "17.06.2019")
  check_solution(2, "2019/06/17", "2019/06/17")
end

# Execute the tests.
run_tests()
