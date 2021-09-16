=begin
What happens if the user doesn't enter any students? 
It will try to print an empty list. How can you use an if statement (Control Flow) 
to only print the list if there is at least one student in there?
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
      if $students.count < 2
        puts "Now we have #{$students.count} student"
      elsif $students.count > 1
        puts "Now we have #{$students.count} students"
      end
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
  if !$students.empty?
    students.each do |student|
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(students)
  puts "Overall, we have #{$students.count} great students"
end

students = input_students
print_header
print($students)
print_footer($students)