 puts "Can I have the first number? "
first_number = gets.chomp.to_i
puts "Can I have the second number? "
second_number = gets.chomp.to_i
puts "What arithmetic opeartion do you want to perform? (+ - * /)"
operation = gets.chomp

case operation 
when "+" 
    num = first_number + second_number  
     
    puts "Cool! The two numbers add up to #{num}" 

when "-"
    num = first_number - second_number  
    puts "#{first_number} - #{second_number} will result in #{num}"
when "*"
    num = first_number * second_number   
    puts "Multiplying #{first_number} and #{second_number} will be #{num}"

when "/"  
    num = first_number / second_number  
     print "#{first_number} devided by #{second_number} is #{num}"
     if num != 0
        print " with a balance of " 
        puts(first_number % second_number)
     end
 
else 
    puts "Invalid operation"
end 
if num > 99999
    puts "The number in the ten thousandth is: #{num / 10000}"
end
if num > 999
    puts "The number in the thousandth place is: #{num / 1000}"
end    
    (num = num % 1000)

if num > 99
   puts "The number in the hundredth place is: #{num / 100}"	
end   
   (num = num % 100)
    
if num > 9
puts "The number in the tens place is: #{num / 10}"	
end     
(num = num % 10)
if num < 10
puts "The number in the ones place is: #{num / 1}"
end                
 

   