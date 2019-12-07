puts "What is your first name? "
first_name = gets.chomp .capitalize
puts "What is your last name? "
last_name = gets.chomp .capitalize

print "Hello, #{first_name} "
puts "#{last_name}! How old are you? "
age = gets.chomp.to_i
print "#{first_name} " 
puts " #{last_name}, you will be:"
puts "#{age + 10} years in 10 years time. "
puts "#{age + 20} years in 20 years time. "
puts "#{age + 30} years in 30 years time. "
puts "#{age + 40} years in 40 years time. "
print "Your full name reversed is " 
print " #{first_name}".reverse 
puts " #{last_name}".reverse 
print "Your full name has " 
print "#{first_name + last_name} ".length
puts " charachters "
print "Your full name in uppercase is " 
print "#{first_name}".upcase
puts " #{last_name} ".upcase