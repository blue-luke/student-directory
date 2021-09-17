=begin
Write a short program that reads 
its own source code 
(search Stack Overflow to find out 
how to get the name of the currently 
executed file) and prints it on the screen.
=end

puts File.read(__FILE__)

# If you are reading this, 
# the file is printing its own course code