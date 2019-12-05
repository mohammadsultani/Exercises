def exponent(num=number,power=power)
   return num ** power   
end
puts "Give me a number!"
number = gets.chomp.to_i
puts "Give me a power for the number!"
power = gets.chomp.to_i
print "#{number} with the power of #{power} is equal to "
puts exponent(num=number,power=power)
