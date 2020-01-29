# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "prime" #This class is used to access the ruby's prime? built_in_function. 

def largest_prime_factor(number)
    array = []
    (2..number).each do |x| 
    if (number % x == 0) && Prime.prime?(x)
    array << x
    end 
    end
    array.sort!.last
end

def unique_chars?(word)
    word = word.split("")
    temp_word = word.uniq
    word.length == temp_word.length ? true : false 
end

def dupe_indices(array)
    temp_array, index, hash, index1 = [], 0, Hash.new, 0 
    while index < array.uniq.length
        if array.count(array.uniq[index]) > 1
            while index1 < array.length
                if array.uniq[index] == array[index1]
                    temp_array << index1
                end
            index1 += 1
            end
        hash[array.uniq[index]] = temp_array
        index1, temp_array = 0, []
        end
    index += 1
    end
    hash
end

def ana_array(array1, array2)
    if array1.length == array2.length
      index = 0
      while index < array1.length
        if array1.include?(array2[index])
          index += 1
        else 
          return false
        end
      end
      return true
    else
      return false
    end
end