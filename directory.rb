    def input_students
        puts "Please enter the names of the students:\n To finish, just hit return twice.\n\n" 

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
        puts "The students of Villains Academy\n\n"    
    end
    
    def print_class(students)
      students.each_with_index do |student, index|                                  
        puts "#{index + 1}: " "#{student[:name]} (#{student[:cohort]} Cohort)"
      end
    end

    def print_begins_with(students)
  puts "\n"
  print "Please input a letter to filter students by: "
  letter = gets.chomp.capitalize
  puts "\nThank you. Here are all matches found within the directory:\n\n"
  select_students = students.select { |student| student[:name][0] == letter }
  select_students.each { |student| puts student[:name] }
    end

    def print_if_length(students)
        puts "\n"
        puts "And, here is a list of all students whose names contain 12 characters or less:"   # This program works similarly to the one above
        puts "\n"
        select_students = students.select { |student| student[:name].length <= 13 }   # We use the number 13 to compensate for the space between the first and last name.
        select_students.each { |student| puts student[:name] }
    end

    def print_footer(names)
        puts "\nOverall, we have #{names.count} great students."
    end

students = input_students
print_header
print_class(students)
print_footer(students)
print_begins_with(students)
print_if_length(students)         # Printing the new method.