def average(first_number, second_number)
    (first_number + second_number ) / 2.0
end
def average_array(array)
    array.sum.to_f / array.length 
end
def repeat(word, multiplier) 
    word *= multiplier
end
def yell(word)
    word.upcase << "!"
end
def alternating_case(word)
    word = word.split
    word.map! { |n| n.downcase }
    index = 0
    while index < word.length  
      word[index].upcase!
      index += 2 
    end
    word.join(" ")
end
def hipsterfy(word)
    word = word.chars
    vowel , index = ["a","e","i","o","u"], -1
    while index.abs < word.length && vowel.length == 5
        if vowel.include?(word[index])
            word.delete_at(index)
            vowel.pop
        end
        index -= 1
    end
    word.join 
end
def vowel_counts(word)
    word.downcase!
    index, hash, vowel = 0, {}, ["a","e","i","o","u"]
    while index < word.length
        if vowel.include?(word[index])
            hash[word[index]] = word.count(word[index])
            word.delete!(word[index])
        end
        index += 1
    end
    hash
end
def caesar_cipher(word, n)
    letters = ("a".."z").to_a
    word.chars.map do |x|
        if letters.include?(x.downcase)
          index = letters.index(x)
          new_index = (index + n) % letters.length
          letters[new_index] 
        else
          x
        end
    end.join
end
