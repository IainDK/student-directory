    def input_students
        puts "Welcome to the Student Directory.\n".center(80)
        puts "Please enter the students' details when prompted.".center(80)
        puts "To exit this program, please hit return four times.\n\n".center(80)
       
        students = []

        print "Name: ".center(45)
        name = gets.chomp
        print "Age: ".center(45)
        age = gets.chomp
        print "City: ".center(45)
        city = gets.chomp
        print "Country: ".center(45)
        country = gets.chomp
        puts "\n"

        while !name.empty? do
    
        students << {name: name, age: age, city: city, country: country, cohort: :Novemeber}
        if students.count == 1
        puts "We now have 1 student.\n".center(75)
        elsif  
        puts "We now have #{students.count} students.\n\n".center(75)
        end

        print "Name: ".center(45)
        name = gets.chomp
        print "Age: ".center(45)
        age = gets.chomp
        print "City: ".center(45)
        city = gets.chomp
        print "Country: ".center(45)
        country = gets.chomp
        puts "\n"
        end
        students
    end

    def print_header
        puts "------------------------------------------------------------\n\n".center(80)
        puts "The students of Villains Academy\n\n".center(80)
    end
    
    def print_class(students)
      students.each_with_index do |student, index|                                  
        puts "#{index + 1}: " "#{student[:name]} (#{student[:age]}) (#{student[:city]}) (#{student[:country]}) (#{student[:cohort]} Cohort)".center(80)
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