# Based on your code for Exercise 10, create a Day Organiser

# First, ask for a time as a single input string in military time (e.g. “16:30”) or standard time (e.g. 04:30PM)
# Then, ask for the activity that will be happening during that time as a string
# Ask the user if that is the last activity they would like to input (Y/N)
# If it’s the last activity, then, list out in order of the day, the activity of the day, together with the time in standard time.
# e.g. Your output should be:
# Your activities today are:
# 04:30AM - Wake up, eat breakfast
# 05:30AM - Go to the gym
# 08:00AM - Head for Recode Class
puts "Choose a time for your activity!"
time = gets.chomp
if time.match(/^\d{4}/)
hour = time[0..1].to_i
min = time[2..-1] 
elsif time.match(/^\d{3}/)
hour = time[0].to_i
min = time[1..-1]
end 
hours = []
minutes = []
if hour > 12 && hour != 24
   hour = (hour - 12)
   hours.push(hour)
   if min.match(/\d$/)
    min.concat("PM")
   end
elsif hour == 24
    hour = (hour - 12)
    hours.push(hour)
    if min.match(/\d$/)
    min.concat("AM")
    end
else hours.push(hour)
end
minutes.push(min)
puts "What activity do you want to perform at this time?"
activity = gets.chomp
activities = []
activities.push(activity)
puts "Is that your last activity: Y/N "
answer = gets.chomp
if answer.match(/n/i)
loop do 
puts "Choose a time for your next activity!"
time = gets.chomp
if time.match(/^\d{4}/)
    hour = time[0..1].to_i
    min = time[2..-1] 
    elsif time.match(/^\d{3}/)
    hour = time[0].to_i
    min = time[1..-1]
end  
minutes.push(min)
if hour > 12 && hour != 24
    hour = (hour - 12)
    hours.push(hour)
    if min.match(/\d$/)
     min.concat("PM")
    end
elsif hour == 24
     hour = (hour - 12)
     hours.push(hour)
     if min.match(/\d$/)
     min.concat("AM")
     end
else hours.push(hour)
end

puts "What activity do you want to perform at this time?"
activity1 = gets.chomp
activities.push(activity1)
puts "Is that your last activity: Y/N "
answer = gets.chomp
break if answer.match(/y/i)
end
end
repeat = hours.length
i = 0
puts "Your activities today are:"
loop do
puts "#{hours[i]}:#{minutes[i]} - #{activities[i]}"
i += 1 
break if i == repeat   
end