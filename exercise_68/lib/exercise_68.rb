def partition(array, number)
    result, smaller, greater = [], [], [] 
    array.each { |n| n < number ? smaller << n : greater << n }
    result << smaller
    result << greater
    result
end
def merge(hash1, hash2) 
    final_hash = hash1.merge(hash2) 
end
def censor(sentence, array)
    sentence, index = sentence.split, 0
    while index < sentence.length
        if array.include?(sentence[index].downcase)
            sentence[index].gsub!(/a|e|i|o|u/i, "*")
        end
        index += 1
    end 
    sentence.join(" ")  
end
def power_of_two?(number)
    if number.odd? && number != 1
      return false
    else
      until number < 2
       number = number / 2.0
      end
      number == 1.0 ? true : false  
    end
end
def palindrome?(word)
    word1, index = "", -1
    until index.abs > word.length
        word1 << word[index]
        index -= 1
    end
    word1 == word ? true : false
end
def substrings(word)
    final_array, temp_array, index, index2 = [], [], 0, 0
    while index2 < word.length
        while index < word.length
        temp_array << word[index]
        index += 1
        final_array << temp_array.join
        end
        index2 += 1
        index, temp_array = index2, []
    end 
    final_array
end
def palindrome_substrings(word)
    array, index, final_array = substrings(word).select { |n| n.length > 1 }, 0, []
    while index < array.length
        palindrome?(array[index]) ? final_array << array[index] : final_array
        index += 1
    end 
    final_array
end

