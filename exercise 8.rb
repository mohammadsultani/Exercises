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

puts "What is your gender?"
gender = gets.chomp

if (gender == "male" && age <= 19)
puts "You are such a young boy!"

elsif (gender == "male" && (age >= 20 && age <= 40))
    puts "How is work, mister?"

elsif (gender == "male" && age >= 41)
    puts "Wow! I admire your experience, sir!"
elsif (gender == "female" && age <= 19)
    puts "You're such a young girl!"
elsif (gender == "female" && (age >= 20 && age <= 40))
    puts "How is work, miss?"
elsif (gender == "female" && age >= 41)
    puts "Wow! I admire your experience, madam!"
end 
if age % 2 == 0
    puts "Your age is an even number."
else puts "Your age is an odd number."
end
birth_year = (2019 - age)
print "Your birth year is #{birth_year}, " 
if ((birth_year % 4 == 0) & (birth_year % 100 != 0)) || (birth_year % 400 == 0)
  puts "and it is a leap year!"
else puts "and it is a normal year!"
end  