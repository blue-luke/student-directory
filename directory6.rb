=begin
Research how the method center() of the String class works. Use it in your code to make the output beautifully aligned.
=end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name
    name = gets.chomp
  end
  # return the array of students
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

def print_header(center_value)
  puts "The students of Villains Academy".center(center_value)
  puts "--------------".center(center_value)
end

def print(students, center_value)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(center_value)
  end
end

def print_footer(students, center_value)
  puts "Overall, we have #{students.count} great students".center(center_value)
end

center_value = 75
print_header(center_value)
print(students, center_value)
print_footer(students, center_value)