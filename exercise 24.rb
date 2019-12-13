def  squares_of_evens(array)
     square_evens = array.select { |x| x%2==0 }.map { |x| x * x  }
      print square_evens

end
squares_of_evens([-5,-2,0,8,1,3,4,8])