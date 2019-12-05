puts "what is your gender"
gender = gets.chomp
puts "how old are you?"
age = gets.chomp.to_i

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