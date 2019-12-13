 data_arr = [
    ["Name", "Position", "Age", "Salary"],
    ["Adrian Lim", "Salesperson", "24", "RM2000"],
    ["John Smith", "Clerk", "31", "RM2300"],
    ["Shafie Abdullah", "Manager", "27", "RM3000"]
  ]
  def convert_to_hash(data_arr)
adrian = {}
jhon = {}
shafie = {}
x = 0
loop do 
adrian [data_arr[0][x]] = data_arr[1][x] 
jhon [data_arr[0][x]] = data_arr[2][x]
shafie [data_arr[0][x]] = data_arr[3][x]
x += 1
break if x > 3
end
print hash_array = [adrian,jhon,shafie]
end
convert_to_hash(data_arr)