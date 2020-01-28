def iterative_nth_fibonacci_number(number)
    sequence = [0,1,1] # These are the first 3 elements of fibonacci sequence. 
    if number > 2 
    index = 3 
    while number > sequence.length-1 # it stops when we got thr fibonacci number in the array.
        sequence << sequence[index-1] + sequence[index-2] # Here we push more fibonacci elements to our 
        index += 1                                                                              # array.
    end
     return sequence[number] # it returns the ouput.
    else # if the number is less than 2 than we will use our existing array elements.
     return sequence[number] # it returns the output.
    end
end

def recursive_nth_fibonacci_number(n)
    return 1 if number == 1 || number == 2
    feb(number-1) + feb(number-2)
end
