def iterative_tower_of_hanoi(rings, from, to, spare)
#code here
    for i in 1..((2 ** rings) -1)
        if i % 3 == 1
            if to.empty?
                to << from.pop
            elsif from.empty?
                from << to.pop
            elsif from.last > to.last
                from << to.pop
            elsif from.last < to.last
                to << from.pop
            end
        elsif i % 3 == 2 
            if spare.empty?
                spare << from.pop
            elsif from.empty?
                from << spare.pop
            elsif spare.last > from.last
                spare << from.pop
            elsif spare.last < from.last
                from << spare.pop
            end
        elsif i % 3 == 0
            if to.empty?
                to << spare.pop
            elsif spare.empty?
                spare << to.pop
            elsif spare.last > to.last
                spare << to.pop
            elsif to.last > spare.last
                to << spare.pop
            end
        end
    end
    return to , from, spare
end
print iterative_tower_of_hanoi(7, [7,6,5,4,3,2,1], [], [])

def recursive_tower_of_hanoi(rings, from, to,spare )
    #code here
    if rings == 1
      to.push(from.pop)
    else
      recursive_tower_of_hanoi(rings - 1, from, spare, to)
      to.push(from.pop)
      recursive_tower_of_hanoi(rings - 1, spare, to, from)
    end
    return to, from, spare
end
a = [7,6,5,4,3,2,1]
b = []
c = []
print recursive_tower_of_hanoi(7, a, c, b)