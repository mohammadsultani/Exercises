puts "What is your number? "	
number = gets.chomp.to_i 
puts "The number in the thousandth place is: #{number / 1000}"
number = number%1000	
puts "The number in the hundredth place is: #{number / 100}"	
number = number%100	
puts "The number in the tens place is: #{number / 10}"	
number = number%10	
puts "The number in the ones place is: #{number / 1}"