=begin I found it easier to do with arrays rather than hashes.
I tried couple of times with hash, but I could'nt get the
output the right output.
=end 

puts "give me a sentence."
sentence = gets.chomp.downcase
array = []
i = (sentence.length)
a = 0 
 loop do
    array.push(sentence[a])
    a += 1
    break if a == i
end 
b = array.uniq
c = b.length
y = 0
puts "The unique charachters are:"
loop do
    if b[y] == " "
        print "space - "
    else  print "#{b[y]} - "
    end
    puts array.count(b[y])
    y += 1
    break if y == c
end