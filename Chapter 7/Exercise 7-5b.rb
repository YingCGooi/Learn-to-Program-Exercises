#Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), 
#she should respond with  HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals). 
#If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! 
#To make your program really believable, have grandma shout a different year each time; 
#maybe any year at random between 1930 and 1950. 
#(This part is optional, and would be much easier if you read the section on Ruby's random number generator at the end of the methods chapter.) 
#You can't stop talking to grandma until you shout BYE.

loop do #we want Grandma to ask you indefinitely
    puts "HUH?! SPEAK UP, SONNY!"
    reply = gets.chomp.to_s
    if reply == "BYE" #Grandma will not stop until you said bye
        break
    elsif reply == reply.upcase #we put a random number between 1930 and 1950
        puts "NO, NOT SINCE #{rand(1930..1950)}!" 
        next
    else
        next
    end
end