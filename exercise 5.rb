def addition(a = first_number,b = second_number)
    a + b
end
def subtraction(a = first_number,b = second_number)
    a - b 
end
def multiplying(a = first_number,b = second_number)
    a * b
end
def division(a = first_number,b = second_number)
    a / b   
end 
def remainder(a = first_number,b = second_number)
    a % b
end   
puts "Can I have the first number? "
first_number = gets.chomp.to_i
puts "Can I have the second number? "
second_number = gets.chomp.to_i
print "Cool! The tow numbers add up to " 
puts addition(a = first_number,b = second_number) 
print "#{first_number} - #{second_number} will result in "
puts subtraction(a = first_number,b = second_number)
print "Multiplying #{first_number} and #{second_number} will be "
puts multiplying(a = first_number,b = second_number)
print "Finally, #{first_number} devided by #{second_number} is "
print division(a = first_number,b = second_number)
print " with a balance of "
puts remainder(a = first_number,b = second_number)