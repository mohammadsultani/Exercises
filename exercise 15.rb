

secret_number = rand 0..1000
until 
puts "Guess a number between 1 to 1000"
guess_number = gets.chomp.to_i
      if (secret_number > guess_number)
       puts "Hotter"
      elsif (secret_number < guess_number)
       puts "Colder"
      else (secret_number == guess_number)
       puts "You won!"
      end
   break if (secret_number == guess_number)

end
 
 