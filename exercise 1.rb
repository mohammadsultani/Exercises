print "What is your first name? "
first_name = gets.chomp . capitalize
print "What is your last name? "
last_name = gets.chomp .capitalize

puts "Hello, #{first_name} #{last_name}.How old are you? "
age = gets.chomp.to_i
puts "#{first_name} #{last_name}, you will be:"
puts "#{age + 10} years in 10 years time. "
puts "#{age + 20} years in 20 years time. "
puts "#{age + 30} years in 30 years time. "
puts "#{age + 10} years in 40 years time. "