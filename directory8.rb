=begin
Once you complete the previous exercise, change the way the users are displayed: 
print them grouped by cohorts. To do this, you'll need to get a list of all existing cohorts 
(the map() method may be useful but it's not the only option), 
iterate over it and only print the students from that cohort.
=end


students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :december},
  {name: "Terminator", cohort: :december},
  {name: "Freddy Krueger", cohort: :march},
  {name: "The Joker", cohort: :march},
  {name: "Joffrey Baratheon", cohort: :march},
  {name: "Norman Bates", cohort: :april}
]

def print_header(center_value)
  puts "The students of Villains Academy".center(center_value)
  puts "--------------".center(center_value)
end

def print(students, center_value)
  puts "What cohort do you want printed?"
  chosen_cohort = gets.chomp
  students.each do |student|
    if student[:cohort] == chosen_cohort.to_sym
      puts "#{student[:name]} (#{student[:cohort]} cohort)".center(center_value)
    end
  end
end

def print_footer(students, center_value)
  puts "Overall, we have #{students.count} great students".center(center_value)
end

center_value = 75
print_header(center_value)
print(students, center_value)
print_footer(students, center_value)