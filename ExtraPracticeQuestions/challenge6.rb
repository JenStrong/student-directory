#Research how the method center() of the String class works.
#Use it in your code to make the output beautifully aligned.

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end



students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

def print_header
  puts "The students of Villains Academy".center(60)
  puts "-------------".center(60)
end

def print_student(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(60)
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(60)
end

students = input_students
print_header
print_student(students)
print_footer(students)
