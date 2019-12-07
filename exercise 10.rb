puts "What is the time now? (in military time)"
time = gets.chomp
hour = time[0..1].to_i
minutes = time[2..3]

if hour < 12
    print "#{time} in military time is #{hour}:#{minutes} AM"
elsif hour == 24
    print "#{time} in military time is 00:#{minutes} AM"
elsif hour == 12 
    print "#{time} in military time is 12:#{minutes} PM"
else hour > 12 
    hour = (hour - 12) 
    print "#{time} in military time is #{hour}:#{minutes} PM"
end