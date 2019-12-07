def print_a_triangle(input_number)
    symbol = "*"
    while (symbol.length) <= input_number
    puts symbol 
    symbol += "*"
    end
end 
print "pick an input number for your traingle: "
input_number = gets.chomp.to_i


puts print_a_triangle(input_number)