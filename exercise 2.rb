puts "Welcome to the Ruby Calculator!"
puts "Can I have the first number? "
first_number = gets.chomp.to_i
puts "Can I have the second number? "
second_number = gets.chomp.to_i
puts "cool! The two numbers add up to #{first_number + second_number} "
puts "#{first_number} - #{second_number} will result in #{first_number - second_number} "
puts " Multiplying #{first_number} and #{second_number} will be #{first_number * second_number}"
puts "Finally, #{first_number} devided by #{second_number} is #{first_number / second_number} "