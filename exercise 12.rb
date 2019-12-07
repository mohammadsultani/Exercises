

def input_number_long(input_number,symbol)
      (input_number -1).times{print symbol}
      puts s   
end
def input_number_tall(input_number,symbol)
     (input_number-2).times { print symbol
      (input_number-2).times {print " "}
            puts symbol}
end
def input_number_long(input_number,symbol)
     (input_number-1).times{print symbol}
      puts symbol   
end 
def print_a_square(input_number,symbol = "=")
      input_number_long(input_number,symbol)
      input_number_tall(input_number,symbol)
      input_number_long(input_number,symbol)
end
print "choose the input number for your square: "
input_number = gets.chomp.to_i
print "choose a symbol for your square from (+ - =): "
symbol = gets.chomp
print_a_square(input_number,symbol = "=")




