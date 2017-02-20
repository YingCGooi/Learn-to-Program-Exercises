#Write an Angry Boss program. It should rudely ask what you want. 
#Whatever you answer, the Angry Boss should yell it back to you, and then fire you.

puts "WHAT DO YA WANT?"
answer = gets.chomp.upcase #we are converting to upcase so that the boss can yell it back using all caps.
puts "WHADDAYA MEAN \"#{answer}\"?!? YOU'RE FIRED!!"
