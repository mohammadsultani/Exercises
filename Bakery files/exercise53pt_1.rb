#Part one of the Bakery Project
class Bakery
    attr_reader :number_of_ovens, :cookies_inventory
    @@bakery = 0 
    def initialize(number_of_ovens, cookies_inventory)
        @number_of_ovens = number_of_ovens
        @cookies_inventory = cookies_inventory
        @@bakery += 1
    end
    def number_of_ovens
        if @number_of_ovens > 5
         "There is no more space for more oven!"
        else
            "There are #{@number_of_ovens} oven in the bakery."
        end
    end 
    def cookies_inventory
        "We have #{@cookies_inventory} cookies in the shop."
    end
end

class Oven 
    attr_reader :cookies_in_oven, :oven_status, :oven_timer, :number_of_ovens
    @@number_of_ovens = 0
    def initialize(cookies_in_oven,oven_status, oven_timer)
        @cookies_in_oven = cookies_in_oven
        @oven_status = oven_status
        @oven_timer = oven_timer
        @@number_of_ovens += 1
    end
    def cookies_in_oven
        if @cookies_in_oven > 20
            "We are going to use more than on oven!"
        end
        "There are #{@@number_of_ovens} ovens working right now."
    end
    def oven_status
        if @oven_status == "on"
            "The oven has turned on.Please wait for the cookies to be cooked."
        else 
            "The oven is not on.Turn it on first."
        end 
    end
    def oven_timer
        for i in 1..@oven_timer
            puts "#{i}sec"
            sleep(0.7)
        end
        puts "The cookies are ready!"
    end
    def number_of_ovens
        @@number_of_ovens
    end
end


class Cookies
    attr_reader :circumference , :cooking_time, :number_of_cookies
    @@number_of_cookies = 0
    def initialize(circumference, cooking_time)
        @circumference = circumference
        @cooking_time = cooking_time
        @@number_of_cookies += 1
    end
    def circumference
     "The cookies circumferences are #{@circumference} cm."
    end
    def cooking_time
        "The cookies will be #{@cooking_time} seconds in the even."
    end
    def number_of_cookies
        @@number_of_cookies
    end
    def to_s
    puts circumference
    puts cooking_time
    puts "You have #{@@number_of_cookies} cookies to bake for today."
    end
end
puts "Welcome to Your Bakery!.How many cookies do you want to bake today?(20..50)"
number_of_cookies = gets.chomp.to_i
puts "For how many seconds do you want to bake them?(20..40)"
baking_time = gets.chomp.to_i
puts "What are the cookies circumferences?(10..20)"
cookie_circumference = gets.chomp.to_i
number_of_cookies.times { $cookies = Cookies.new(cookie_circumference, baking_time)}
$cookies.to_s
puts "Now it is time to start baking."
puts "First turn on the oven.('on')"
on_oven = gets.chomp
if  $cookies.number_of_cookies % 20 == 0
    ($cookies.number_of_cookies / 20).times { oven_cookies = Oven.new(20, on_oven, baking_time)}
elsif $cookies.number_of_cookies % 20 != 0
    ($cookies.number_of_cookies / 20).times { oven_cookies = Oven.new(20, on_oven, baking_time)}
    oven_cookies = Oven.new(($cookies.number_of_cookies % 20), on_oven, baking_time)
end
puts oven_cookies.oven_status
puts oven_cookies.cookies_in_oven
oven_cookies.oven_timer
bakery = Bakery.new(oven_cookies.number_of_ovens, $cookies.number_of_cookies)
puts bakery.number_of_ovens
puts bakery.cookies_inventory