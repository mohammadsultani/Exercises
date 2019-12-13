input_numbers = []
loop do 
puts "Do you have another number?"
answer = gets.chomp.downcase
input_numbers.push(answer)
break if answer == "done"
end
input_numbers.pop
number = input_numbers.map{ |x| x.to_i }
prime_number = 
puts "The highest number is: #{number.max}"
puts "The lowest number is: #{number.min}"
puts "The sum of all the numbers are: #{number.sum}"
puts "You have inputed #{number.length} numbers"
puts "The average of the numbers are: #{(number.sum.to_f / number.length)}"
puts "These are all the even numbers: #{number.each.select{ |value|  value if value%2==0 }}"
puts "These are all the numbers: #{number}"
puts "There are some prime numbers: #{number.each.select{ |value| value if (value%2!=0 && (value%value==0 || value%3!=0) && value!=9) }}" 






