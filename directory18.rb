=begin
We are opening and closing the files manually. 
Read the documentation of the File class to find out how to use a code block 
(do...end) to access a file, so that we didn't have to close it explicitly 
(it will be closed automatically when the block finishes). 
Refactor the code to use a code block.
open(filename, mode="r" [, opt]) {|file| block } → obj
=end

@students = []

def interactive_menu
  try_load_students
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def process(selection)
  case selection
    when "1"
      @students = input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
  end
end

def print_menu
  # 1 Print menu and ask for user input
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  # while name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name
    name = STDIN.gets.chomp
  end
  # return the array of students
  @students
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  open("students.csv", mode="w") do |file|
    @students.each do |student|
      student_data = [student[:name], student [:cohort]]
      csv_line = student_data.join(",")
      file.puts csv_line
    end
  end
end

# open(filename, mode="r" [, opt]) {|file| block } → obj
def load_students(filename = "students.csv")
  open(filename, mode="r") do |file|
    file.readlines.each do |line|
      name, cohort = line.chomp.split(",")
      @students << {name: name, cohort: cohort.to_sym}
    end
  end
end

def try_load_students
  filename = ARGV.first # first argument from the command line. ARGV is an array set up automatically
  return if filename.nil? # exit the method if not argument given
  if File.exists?(filename)
    load_students(filename)
      puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

interactive_menu