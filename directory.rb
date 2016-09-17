    def input_students
        puts "Please enter the names of the students:\n To finish, just hit return twice."
    
        students = []
    
        name = gets.chomp
    
        while !name.empty? do
    
        students << {name: name, cohort: :novemeber}
        puts "We now have #{students.count} students."
    
        name = gets.chomp
        end
        students
    end

    def print_header
        puts "The students of Villains Academy"
        puts "-------------"
    end
    
    def print_class(students)
      students.each_with_index do |student, index|                                  
        puts "#{index + 1}: " "#{student[:name]} (#{student[:cohort]} cohort)"
      end
    end
    
    def print_footer(names)
        puts "Overall, we have #{names.count} great students."
    end

students = input_students
print_header
print_class(students)
print_footer(students)