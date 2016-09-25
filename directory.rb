    def input_students
        puts "Welcome to the Student Directory.\n".center(80)
        puts "Please enter the students' details when prompted.\n\n".center(80)
       
        students = []
        while true do
            print "Name: ".center(45)
            name = gets.chomp
            print "Age: ".center(45)
            age = gets.chomp
            print "City: ".center(45)
            city = gets.chomp
            print "Country: ".center(45)
            country = gets.chomp
            print "Cohort: ".center(45)
            cohort = gets.strip                                                 # Using the gets.strip method instead of gets.chomp
         while cohort.empty?
            puts "\n"
            puts "The field 'Cohort' can not be blank!".center(80)
            print "Cohort: ".center(45)
            cohort = gets.strip
          end

        students << {name: name, age: age, city: city, country: country, cohort: cohort}
        print "\n"
        if students.count == 1
        puts "We now have 1 student.\n".center(75)
        elsif  
        puts "We now have #{students.count} students.\n".center(75)
        end 

        puts "Do you want to add a new student? Please select \'Yes'\ or \'No'\:".center(75)
        print "\n".center(75)
        new_student = gets.chomp.capitalize
        puts "\n"
        break if new_student == 'No'
         end
        students
    end

    def print_header
        puts "------------------------------------------------------------\n".center(80)
        puts "The Students of Villains Academy\n\n".center(80)
    end
    
    def print_class(students)
        if students.count >= 1 
      students.each_with_index do |student, index|                                  
        puts "#{index + 1}: " "#{student[:name]} (#{student[:age]}) (#{student[:city]}) (#{student[:country]}) (#{student[:cohort]} Cohort)".center(80)
        end
      end
    end

    def print_by_cohort(students)
    puts "\n"
   puts "Which cohort would you like to view?".center(80)

   print "Cohort: ".center(50)
   requested_cohort = gets.chomp
   print "\n"
    students.each_with_index do |student|
     if student[:cohort] == requested_cohort
         puts "#{student[:name]} (#{student[:cohort]} Cohort)".center(80)
     end
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
        puts "And, here is a list of all students whose names contain 12 characters or less:"
        puts "\n"
        select_students = students.select { |student| student[:name].length <= 13 }
        select_students.each { |student| puts student[:name] }
    end

    def print_footer(names)
            puts "\n"
        if names.count == 1
            puts "Overall, we have 1 great student.".center(80)
        elsif
            puts "Overall, we have #{names.count} great students.".center(80)
        end
    end
students = input_students
print_header
print_class(students)
print_footer(students)
print_by_cohort(students)