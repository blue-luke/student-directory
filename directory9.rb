=begin
Right now if we have only one student, the user will see a message "Now we have 1 students", 
whereas it should be "Now we have 1 student". How can you fix it so that it uses the singular form 
when appropriate and plural form otherwise?
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