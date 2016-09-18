    def input_students
        puts "Please enter the name(s) of the students:\n To finish, just hit return twice.\n\n" # Double line break to make the program look neater.

        students = []

        name = gets.chomp
    
        while !name.empty? do
    
        students << {name: name, cohort: :Novemeber}
        puts "We now have #{students.count} students."
    
        name = gets.chomp
        end
        students
    end

    def print_header
        puts "The students of Villains Academy\n\n"                             # As above, the addition of a double line break helps the program look more presentable.
    end
    
    def print_class(students)
      students.each_with_index do |student, index|                                  
        puts "#{index + 1}: " "#{student[:name]} (#{student[:cohort]} Cohort)"
      end
    end

    def print_begins_with(students)                                             # Method for filtering students whose name begins with a letter of the user's choice.
  puts "\n"                                                                     # Line break for presentation purposes.
  print "Please input a letter to filter students by: "                         # Tell the user what we want from them.
  letter = gets.chomp.capitalize                                                # Get the user's input and capitalize it so to match the names that were previously entered.
  puts "\n"                                                                     # Line break for presentation purposes.
  select_students = students.select { |student| student[:name][0] == letter }   # .select method used to filter for students whose first [0] name begins with...
  select_students.each { |student| puts student[:name] }                        # Do this for .each student, and puts the result.
    end
    
    def print_footer(names)
        puts "\nOverall, we have #{names.count} great students."
    end

students = input_students
print_header
print_class(students)
print_footer(students)
print_begins_with(students)                                                     # Calling our newly defined method.