# You will write two methods:

# You will write a method is_prime? that takes in a number
# This method returns a boolean, indicating whether the number is prime. 
# Note: A prime number is only divisible by 1 and itself.

# The method pick_primes that takes in an array of numbers
# The method should return a new array containing only the prime numbers
# The method pick_primes should use the method is_prime?

def is_prime?(num)
    # Write your code here
if ((num%2!=0) && (num%3!=0) && (num%5!=0)) || num==2  || num==3 || num==5
    return true
else 
    return false
end
end

def pick_primes(numbers)
    # Write your code here
    numbers.map! { |n| n if is_prime?(n) == true  }.compact!.sort!
    return numbers
end

print pick_primes([2, 3, 4, 5, 6]) == [2, 3, 5]
puts

print pick_primes([101, 20, 103, 2017]) == [101, 103, 2017]
puts