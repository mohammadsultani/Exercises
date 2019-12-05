puts "pick a number  "
num = gets.chomp.to_i
if num >= 0 && num <= 50
    puts "Your number is between 0 and 50 "
elsif num >= 50 && num <= 100
    puts "Your number is between 50 and 100 "
else num > 100
    puts "Your number is more than 100 "
end