=begin
Our code only works with the student name and cohort. 
Add more information: hobbies, country of birth, height, etc.
=end

def input_students
  puts "Please enter the names, hobbies, countries of birth and heights of the students"
  puts "To finish, enter stop when asked for a name"
  collect_names = true
  # create an empty array
  students = []
  while collect_names do
    puts "Enter name"
    name = gets.chomp
      if name == "stop"
        collect_names = false
      else
        puts "Enter #{name}'s hobby"
        hobby = gets.chomp
        puts "Enter #{name}'s country of birth"
        cob = gets.chomp
        puts "Enter #{name}'s height"
        height = gets.chomp
        students << {name: name, cohort: :november, hobby: hobby, cob: cob, height: height}
        puts "Now we have #{students.count} students"
      end
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort, hobby is #{student[:hobby]}, height is #{student[:height]} cm, country of birth is #{student[:cob]})"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)

=begin
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
=end