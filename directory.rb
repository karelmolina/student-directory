def input_students
  puts "Please enter the name of the student"
  puts "to finish, just hit return twice"

  #empty array of students
  students = []

  #gets the first name
  name = gets.chomp

  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "now he have #{students.count} students"
    name = gets.chomp
  end

  #return the array of students
  students

end

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print_names names
names.each_with_index do |student, index|
  number = index + 1
  puts "#{number}. #{student[:name]}, (#{student[:cohort]} cohort)"
end

end

def print_footer names
  puts "Overall, we have #{names.count} great students"
end

#noting happends if we no call this methods
students = input_students
print_header()
print_names(students)
print_footer(students)
