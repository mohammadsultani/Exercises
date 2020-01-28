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
p coins
a = coins.select { |n| 33 % n == 0 }
p a.uniq.length
def tester(coins, target_amount, array = [], index = -1)
    a = coins.select { |n| target_amount % n == 0 }
    return array if (a.sort.uniq[index]) == nil
    if a.count(a.sort.uniq[index]) == target_amount / a.sort.uniq[index] 
    array << a.sort.uniq[index]
    array *= (target_amount / a.sort.uniq[index])
    end
    tester(coins, target_amount, array, index - 1 )
end
p tester(coins, 33)
