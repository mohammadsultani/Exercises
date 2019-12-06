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
puts "What opeartion do you want to perform? (+ - * /)"
operation = gets.chomp

case operation 
when "+"   
    print "Cool! The two numbers add up to " 
puts addition(a = first_number,b = second_number)
addition
when "-"
    print "#{first_number} - #{second_number} will result in "
    puts subtraction(a = first_number,b = second_number)
when "*" 
print "Multiplying #{first_number} and #{second_number} will be "
puts multiplying(a = first_number,b = second_number)

when "/"  
print "#{first_number} devided by #{second_number} is "
print division(a = first_number,b = second_number)
end

if opration = "/" && (first_number % second_number != 0 )
    print " with a balance of "
puts remainder(a = first_number,b = second_number)
end

# i couldnt figure out how to merge top to bottom  
if operation = "+"
    total = first_number + second_number

elsif total > 999
    puts "The number in the thousandth place is: #{total / 1000}"
   
elsif total > 99
       total = (total % 1000)  
   puts "The number in the hundredth place is: #{total / 100}"	
   
elsif total > 9
       total = (total % 100)
   puts "The number in the tens place is: #{total / 10}"	
   
elsif total > 0
       total = (total % 10) 
   puts "The number in the ones place is: #{total / 1}"
end
   