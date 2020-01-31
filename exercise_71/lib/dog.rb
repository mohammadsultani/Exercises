class Dog
attr_accessor :name , :breed, :age, :bark, :favorite_foods
def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
end
def bark
    if @age > 3
        return @bark.upcase 
    else 
        return @bark.downcase
    end
end
def favorite_food?(food)
    if @favorite_foods.include?(food.downcase.capitalize)
        return true
    else 
        return false 
    end
end
end
