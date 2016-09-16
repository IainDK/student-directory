students = [ "Dr. Hannibal Lecter",                        # Students have now been placed in an array so that I can easier maintain & update the program. 
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex DeLarge",
 "The Wicked Witch of the West",
 "Terminator",
 "Freddy Krueger",
 "The Joker",
 "Joffrey Baratheon",
 "Norman Bates" ]

puts "The students of Villains Academy"
puts "-------------"
students.each do |student|                                   #  
    puts student
end
print "Overall, we have #{students.count} great students."   # Here, I use string interpolation to clean my code up.