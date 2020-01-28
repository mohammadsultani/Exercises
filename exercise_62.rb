# Prime Numbers: Recursion
# Write a method, is_prime?
# You have to determine what are the arguments required for is_prime
# The method should be used to determine if a number is a prime number recursively.

def is_prime?(number,divisor = 2)
	#code here 
	if (number == 2) 
		return true 
	elsif (number < 2)
		return false 
    elsif (number % divisor == 0) 
        return false
    elsif ( divisor * divisor > number) 
        return true 
    end
   is_prime?(number , divisor + 1)
end 
puts is_prime?(17) == true
puts is_prime?(15) == false
puts is_prime?(41) == true