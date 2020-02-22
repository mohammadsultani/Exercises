#Part two of the Bakery Project
#Please run the code in the terminal and insert some inputs where it is asked.
class Bakery
    attr_reader :number_of_ovens, :cookies_inventory
    @@bakery = 0 
    def initialize(number_of_ovens, cookies_inventory)
        @number_of_ovens = number_of_ovens
        @cookies_inventory = cookies_inventory
        @@bakery += 1
    end
    def number_of_ovens
        "There are #{@number_of_ovens} oven in the bakery."
    end 
    def cookies_inventory
        "We have #{@cookies_inventory} cookies in the shop."        
    end
    def report
    puts "We have baked #{$creamyvanila.creamyvanilas} Creamy Vanila cookies"
    puts "#{$peanut_butter.peanut_butters} Peanut Butter cookies." 
    puts "#{$chocolatechip.chocolatechips} Chocolate Chips cookies."
    end
end

class Oven 
    attr_reader :oven_status, :number_of_ovens
    @@number_of_ovens = 0
    def initialize(oven_status, oven_timer)
        @oven_status = oven_status
        @oven_timer = oven_timer
        @@number_of_ovens += 1
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
    def number_of_cookies
        @@number_of_cookies
    end
    def to_s
    puts cooking_time
    end
end
class PeanutButter < Cookies
    attr_reader :peanut_butters , :cooking_time, :circumference
    @@peanut_butters = 0
    def initialize(circumference, cooking_time)
        super
        @@peanut_butters += 1
    end
    def peanut_butters
        @@peanut_butters
    end
    def peanut_butter
        "Now we are going to bake #{@@peanut_butters} Peanut Butter cookies."
    end
    def cooking_time
        "The peanut butter cookies will be #{@cooking_time} seconds in the oven"
    end
    def circumferences
        "The Peanut butter cookies circumferences are #{@circumference} cm."
    end
    def to_s
        super
        puts peanut_butter
    end
    def cooking_status
        if @cooking_time > 12
            "The Peanut butter cookies has burned."
        elsif @cooking_time > 8
            "The Peanut butter cookies are ready."
        elsif @cooking_time > 5
            "The Peanut butter cookies are almost ready"
        elsif @cooking_time > 1
            "The Peanut butter cookies are doughy."
        end
    end
end
class ChocolateChip < Cookies
    attr_reader :cooking_time, :chocolatechips , :circumference
    @@chocolatechips = 0
    def initialize(circumference, cooking_time)
        super 
        @cooking_time = @cooking_time
        @@chocolatechips += 1
    end
    def chocolatechips
        @@chocolatechips 
    end
    def cooking_time
        "The Chocolate chip cookies will be #{@cooking_time} seconds in oven."
    end  
    def chocolatechip
        "Now we are going to bake #{@@chocolatechips} Chocolate Chips cookies."
    end
    def circumferences
        "The Chocolate chip cookies circumferences are #{@circumference} cm."
    end
    def cooking_status
        if @cooking_time >= 15
            "The Chocolate chip cookies has burned."
        elsif @cooking_time >= 10
            "The Chocolate chip cookies are ready."
        elsif @cooking_time > 5
            "The Chocolate chip cookies are almost ready"
        elsif @cooking_time > 0
            "The Chocolate chip cookies are doughy."
        end
    end
    def to_s
        super
        puts chocolatechip     
    end
end
class CreamyVanila < Cookies
    attr_reader :creamyvanilas, :cooking_time, :circumference
    @@creamyvanilas = 0
    def initialize(circumference, cooking_time)
        super
        @cooking_time = cooking_time
        @@creamyvanilas += 1
    end
    def cooking_time
        "The Vanila creamy cookies will be #{@cooking_time} seconds in oven."
    end
    def creamyvanilas
      @@creamyvanilas
    end
    def creamyvanila 
        "Now we are going to bake #{@@creamyvanilas} Creamy Vanila cookies."
    end
    def circumferences
        "The Creamy vanila cookies circumferences are #{@circumference} cm."
    end
    def cooking_status
        if @cooking_time >= 14
            "The Creamy Vanila cookies has burned."
        elsif @cooking_time >= 10
            "The Creamy Vanila cookies are ready."
        elsif @cooking_time >= 5
            "The Creamy Vanila cookies are almost ready"
        elsif @cooking_time > 0
            "The Creamy Vanila cookies are doughy."
        end
    end
    def to_s
        super
    puts creamyvanila 
    end
end
class Tray
    attr_reader :number_of_trays
    @@number_of_trays = 0
    def initialize(cookies_circumference, quantity_of_cookies)
        @cookies_circumference = cookies_circumference
        @quantity_of_cookies = quantity_of_cookies
        @@number_of_trays += 1
    end
    def used_tray
        "we are going to use #{@@number_of_trays} trays to puts the cookies in the oven."
    end
    def number_of_trays
        @@number_of_trays
    end
    def quantity_of_cookies
        "The tray is holding #{@quantity_of_cookies} cookies at the moment." 
    end
end
## Driver code
# We will get input from the user.
# The first type of cookies that we will bake is Peanut Butters.
puts "Welcome to your bakery. Let's bake some cookies."
puts "We are going to bake 3 types of cookies."
puts "How many Peanut Butter cookies do you want to bake? (10..40)" # please choose a number that is a multiple of 10.
cookies_number = gets.chomp.to_i
puts "Choose Their circumference. (5..20)"
circumference = gets.chomp.to_i
puts "How many minutes do you want to bake them? (5..20)"
cooking_time = gets.chomp.to_i
cookies_number.times { $peanut_butter = PeanutButter.new(circumference,cooking_time ) }
$peanut_butter.to_s
# At this point, we will use our tray class and will place cookies on trays.
# Each tray has space for 100 cm circumference cookies, so if the total circumferences are more than 100 -
# -we will create more trays.   
if  $peanut_butter.circumference * $peanut_butter.peanut_butters > 100
  total = ($peanut_butter.circumference * $peanut_butter.peanut_butters) / 100
     total.times { $tray = Tray.new(circumference, ($peanut_butter.peanut_butters / total)) }
    else 
        $tray = Tray.new(circumference,$peanut_butter.peanut_butters)
end
puts $tray.used_tray
puts "Now lets on the Oven. ('on')" # we on our train by typong 'on'. 
on_oven = gets.chomp
# This is where we place each tray inside one oven. 
$tray.number_of_trays.times { $oven = Oven.new(on_oven, cooking_time) }
puts $oven.oven_status
puts $oven.oven_timer

## At this point we are going to bake Creamy Vanila coookies.
puts "Now let's cook some Creamy Vanila"
puts "How many Creamy Vanila cookies do you want to bake?(10..40)" # please choose a number that is a multiple of 10.
cookies_number = gets.chomp.to_i
puts "Choose their circumference. (5..10)"
circumference = gets.chomp.to_i
puts "for how many minutes do you want to bake them? (2..20)"
cooking_time = gets.chomp.to_i
cookies_number.times { $creamyvanila = CreamyVanila.new(circumference, cooking_time) }
$creamyvanila.to_s
if  $creamyvanila.circumference * $creamyvanila.creamyvanilas > 100
    total = ($creamyvanila.circumference * $creamyvanila.creamyvanilas) / 100
       total.times { $tray = Tray.new(circumference, ($creamyvanila.creamyvanilas / total)) }
    else 
        $tray = Tray.new(circumference,$creamyvanila.creamyvanilas)
end
puts $tray.used_tray
puts "Now let's on the oven. ('on')"
on_oven = gets.chomp
$tray.number_of_trays.times { $oven = Oven.new(on_oven, cooking_time) }
puts $oven.oven_status
puts $oven.oven_timer

 ## Now we are going to bake Chocolate chips cookies.
puts "It is time to cook some Chocolate Chips cookies"
puts "How many Chocolate Chips cookies do you want to bake?(10..40)" # please choose a number that is a multiple of 10.
cookies_number = gets.chomp.to_i
puts "Choose their circumferences. (5..10)"
circumference = gets.chomp.to_i
puts "for how many minutes do you want to bake them? (2..20)"
cooking_time = gets.chomp.to_i
cookies_number.times { $chocolatechip = ChocolateChip.new(circumference, cooking_time) }
$chocolatechip.to_s
if  $chocolatechip.circumference * $chocolatechip.chocolatechips > 100
    total = ($chocolatechip.circumference * $chocolatechip.chocolatechips) / 100
       total.times { $tray = Tray.new(circumference, ($chocolatechip.chocolatechips / total)) }
else 
   $tray = Tray.new(circumference,$chocolatechip.chocolatechips) 
end
puts $tray.used_tray
puts "Now let's on the oven. ('on')"
on_oven = gets.chomp
$tray.number_of_trays.times { $oven = Oven.new(on_oven, cooking_time) }
puts $oven.oven_status
puts $oven.oven_timer 
# Here we will use the Bakery class. 
bakery = Bakery.new($oven.number_of_ovens,$chocolatechip.number_of_cookies)
puts "This is the bakery report for today."
puts bakery.number_of_ovens
puts bakery.cookies_inventory
bakery.report
puts "Let's see how well we cooked our cookies."
puts $peanut_butter.cooking_status
puts $creamyvanila.cooking_status
puts $chocolatechip.cooking_status
