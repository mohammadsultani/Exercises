=begin
def tester(remaining_coins, target_amount, array1 = [], index = -1)
      a = remaining_coins.select { |n| target_amount % n == 0 }
      return array1 if (a.sort.uniq[index]) == nil
      if a.count(a.sort.uniq[index]) == target_amount / a.sort.uniq[index] 
      array << a.sort.uniq[index]
      array *= (target_amount / a.sort.uniq[index])
      end
      tester(remaining_coins, target_amount, array1, index - 1 )
end
=end
def return_coins(remaining_coins, target_amount, array = [], array1 = [], index = -1)
      # Your code here
      if ((target_amount == 0 ||  remaining_coins.empty? || (remaining_coins.sum < target_amount)) && (array1.length > array.length))
            return array
      elsif (array1.length < array.length)  
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

