# You will write a method, caesar_cipher that takes a String
# The method will shift the characters by an Integer factor and then output the modified String
# For example, caesar_cipher("a", 5) -> "f"
# (a is the first alphabet (1). Add 5, so the value is now 6. f is the 6th alphabet.)
# Remember that lowercase and uppercase characters have different values

def caesar_cipher(string, shift_factor)
# Write your code here
a = []
i = 0
result = ""
loop do
    a.push(string[i])
    if a[i].match(/[a-z]/i)
    shift_factor.times { a[i].succ! }
    end
    result.concat(a[i])
    i += 1
    break if i == string.length
end
return result[1..-1]
end
print caesar_cipher("What a string!", 5) == "Bmfy f xywnsl!"
puts