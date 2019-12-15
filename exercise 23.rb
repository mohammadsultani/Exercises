def segregate(array)
b = array.select { |x| x > 0 }
c = array.select { |x| x < 9 }
seg_array = []
seg_array.push(c)
seg_array.push(b)
print seg_array.flatten
end
segregate([0,9,9,0,9,0,9,0,9])
