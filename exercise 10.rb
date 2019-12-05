puts "try a  number"
a = gets.chomp
puts "pick a number"
b = gets.chomp.to_i

if a == "male" && (b >= 20 && b <= 40)
    puts "how are u "
else puts " wrong number"
end