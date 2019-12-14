puts "What is your first word?"
first_word = gets.chomp
puts "What is your second word?"
second_word = gets.chomp
i = first_word.length
x = second_word.length
fword = []
sword = []
y = 0
loop do 
    fword.push(first_word[y]) 
    y += 1
    break if y == i 
end 
y = 0
loop do 
    sword.push(second_word[y]) 
    y += 1
    break if y == x 
end 
word = fword - sword
if word.length == 0
    puts  "#{first_word} and #{second_word} are anagrams!"
else 
    puts  "#{first_word} amd #{second_word} are not anagrams!"
end

  