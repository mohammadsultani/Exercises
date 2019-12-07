

puts "pick a number"
answer = gets.chomp.to_i
number = answer
case number 
when   0..50
    puts "Your number is between 0 and 50 "
when 51..100
    puts "Your number is between 51 and 100 "
else 
    puts "Your namber is more than 100 "
end