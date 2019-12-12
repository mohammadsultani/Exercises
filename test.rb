=begin i = 0
loop do
  i = i + 1
  if i == 5
    next
  end
  puts i
  if i == 10
    break
  end
end 
puts “Done!”
=end 
i = 0
loop do  
puts i
i += 1 
    if i == 6
        next
    end 
break if i > 12 
end 