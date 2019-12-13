def is_coprime?(a,b)
    if (a%2==0 && b%2==0) || (a%3==0 && b%3==0) || (a%5==0 && b%5==0) || (a%7==0 && b%7==0)
        p false 
    else 
        p true
    end
end 
is_coprime?(25,12)