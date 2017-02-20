#Write a program which asks for a person's first name, then middle, then last. 
#Finally, it should greet the person using their full name.

puts "Please enter your first name:"
first_name = gets.chomp.capitalize #storing user's first name into a variable while capitalizing it.

puts "Please enter your middle name:"
middle_name = gets.chomp.capitalize

puts "Please enter your last name:"
last_name = gets.chomp.capitalize

puts "Hello, #{first_name} #{middle_name} #{last_name}!"