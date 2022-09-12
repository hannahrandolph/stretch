
puts "Hello there! Welcome to my Mad Lib! Together we will create a beautiful story! Let's get started!"
print "First, what is your name? "
name = gets.chomp
name.capitalize!
print "Now, can you please share a place? "
place = gets.chomp
place.capitalize!
print "Next up is a verb ending in 'ing'! "
verb = gets.chomp
print "Perfect! I'll be needing an adjective now! " 
adj = gets.chomp
print "Last but not least, tell me a noun! "
noun = gets.chomp

puts "Thank you for your cooperation, now its time to see what story we tell!"
puts "#{name}, the newest stretchee, is based in the #{place} office and enjoys #{verb} on the weekends. On their first day an  #{adj} coworker introduced them to #{noun}  and as a result no work has been done in days!"
