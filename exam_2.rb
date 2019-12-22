# You will write a method reverse(word) that takes in a String
# The method returns the word with its letters in reverse order
# You may not use the String#reverse or String#reverse! method

def reverse(word)
    revers_word =  ""
    i = word.length
    x = 0
    a = []
    loop do
    a.push(word[x]) 
    x +=1
    break if i == x
    end
    y = a.length
    k = 0
    loop do 
    revers_word.insert(0,a[k])
    k += 1
    break if k == y
    end 
    return revers_word
end
puts reverse("cat") == "tac"
puts

puts reverse("programming") == "gnimmargorp"
puts

puts reverse("bootcamp") == "pmactoob"
puts