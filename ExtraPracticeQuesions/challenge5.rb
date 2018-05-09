#Our code only works with the student name and cohort.
#Add more information: hobbies, country of birth, height, etc.

def input_students
  puts "Please enter the name of the student, then their hobby"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp
  hobby = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november, hobbies: hobby}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    hobby = gets.chomp
  end
  students
end



students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: "Golf"},
  {name: "Darth Vader", cohort: :november, hobbies: "Soccer"},
  {name: "Nurse Ratched", cohort: :november, hobbies: "Tennis"},
  {name: "Michael Corleone", cohort: :november, hobbies: "Cheerleading"},
  {name: "Alex DeLarge", cohort: :november, hobbies: "Swimming"},
  {name: "The Wicked Witch of the West", cohort: :november,hobbies: "hockey"},
  {name: "Terminator", cohort: :november, hobbies: "Sailing"},
  {name: "Freddy Krueger", cohort: :november, hobbies: "Baseball"},
  {name: "The Joker", cohort: :november, hobbies: "Bowling"},
  {name: "Joffrey Baratheon", cohort: :november, hobbies: "Football"},
  {name: "Norman Bates", cohort: :november, hobbies: "Volleyball"}
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort), #{student[:hobbies]}"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print_student(students)
print_footer(students)
