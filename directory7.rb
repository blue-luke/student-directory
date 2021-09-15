=begin
In the input_students method the cohort value is hard-coded. 
DONE How can you ask for both the name and the cohort?
DONE What if one of the values is empty? Can you supply a default value? 
DONE The input will be given to you as a string? How will you convert it to a symbol?
DONE What if the user makes a typo?
=end

$students = []

def input_students
  puts "Please enter the names and cohorts of the students"
  puts "To finish, enter \"stop\" when asked for a name"
  puts "Enter name"
  name = gets.chomp
  if name == "stop"
    return $students
  else
    if name == ""
      name = "NO NAME ENTERED"
    end
    puts "Enter #{name}'s cohort"
    cohort = gets.chomp.to_sym
    puts "Is this the correct name and cohort: #{name}, #{cohort}? Enter yes or no"
    correct = gets.chomp
    if correct == "yes"
      $students << {name: name, cohort: cohort}
      puts "Now we have #{$students.count} students"
      input_students
    elsif correct == "no"
      input_students
    end
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{$students.count} great students"
end

students = input_students
print_header
print($students)
print_footer($students)

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