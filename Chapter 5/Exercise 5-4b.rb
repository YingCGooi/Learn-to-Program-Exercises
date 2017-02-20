#Write a program which asks for a person's favorite number. Have your program add one to the number, 
#then suggest the result as a bigger and better favorite number. (Do be tactful about it, though.)

puts "What is your favorite number?"
fav_num = gets.chomp.to_i #store user input into a variable while converting it into an integer.
bigger_num = fav_num + 1

puts "Would you think that a better favorite number for you is #{bigger_num}?"
