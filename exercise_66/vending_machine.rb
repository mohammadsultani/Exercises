# Vending Machine Problem
# As per the README requirements.
# You have to use recursion in this problem
# You can create additional nested methods if you need to

def return_coins(remaining_coins, target_amount, array = [], array1 = [], index = -1)
  # Your code here
  if ((target_amount == 0 ||  remaining_coins.empty? || (remaining_coins.sum < target_amount)) && (array1.length == 0 || array1.length > array.length)) 
        return array
  elsif (array1.length < array.length)  && array1.length > 0
        return array1
  end
  
  if remaining_coins.any? { |n| target_amount % n == 0 }
        a = remaining_coins.select { |n| target_amount % n == 0 }
        if (a.sort.uniq[index]) != nil
              if a.count(a.sort.uniq[index]) == target_amount / a.sort.uniq[index] 
              array1 << a.sort.uniq[index]
              array1 *= (target_amount / a.sort.uniq[index])
              end
        end
  end
  
  temp_array = []
  if remaining_coins.sort.uniq[index] <= target_amount
        if remaining_coins.count(remaining_coins.sort.uniq[index]) >= (target_amount / remaining_coins.sort.uniq[index])
                temp_array << remaining_coins.sort.uniq[index]  
                    temp_array *= (target_amount / remaining_coins.sort.uniq[index])
                    array << temp_array
        else
              temp_array << remaining_coins.sort.uniq[index]
              temp_array *= remaining_coins.count(remaining_coins.sort.uniq[index])
              array << temp_array
        end    
end
  array.flatten!
  return_coins(remaining_coins, target_amount - temp_array.sum, array, array1, index - 1)
end

# Test Case 1
coins = []
100.times do
  coins << 10
  coins << 5
  coins << 2
  coins << 1
end

p return_coins(coins, 15) == [10, 5]

# Test Case 2
coins = []
100.times do
  coins << 10
  coins << 5
  coins << 2
  coins << 1
end

p return_coins(coins, 1) == [1]

# Test Case 3
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

p return_coins(coins, 20) == [10, 5, 2, 2, 1]

# Test Case 4
coins = []

p return_coins(coins, 20) == []

# Test Case 5
coins = []
5.times do
  coins << 10
end

p return_coins(coins, 100) == []

# Test Case 5
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

p return_coins(coins, 3) == [2, 1]

# Test Case 6
coins = []
100.times do
  coins << 1
end

p return_coins(coins, 34) == [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

# Test Case 7
coins = []
4.times do
  coins << 10
end
2.times do
  coins << 50
end
1.times do
  coins << 20
end
100.times do
  coins << 1
end

p return_coins(coins, 98) == [50, 20, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
=begin
# Test Case 8
coins = []
8.times do
  coins << 10
end
2.times do
  coins << 20
end
1.times do
  coins << 50
  coins << 15
  coins << 10
end
p coins
p return_coins(coins, 98)# == [50, 20, 20, 1, 1, 1, 1, 1, 1, 1, 1]
=end
# Test Case 9
coins = []
8.times do
  coins << 1
end
3.times do
  coins << 11
end
2.times do
  coins << 20
end
  coins << 50
  coins << 10
 coins
p return_coins(coins, 33) == [11, 11, 11]
