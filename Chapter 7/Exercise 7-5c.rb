#Extend your Deaf Grandma program: What if grandma doesn't want you to leave? 
#When you shout BYE, she could pretend not to hear you. 
#Change your previous program so that you have to shout BYE three times in a row. 
#Make sure to test your program: 
#if you shout BYE three times, but not in a row, you should still be talking to grandma.

loop do #we want Grandma to ask you indefinitely
    puts "HUH?! SPEAK UP, SONNY!"
    reply = gets.chomp.to_s
    if reply == "BYE BYE BYE" #Grandma will not stop until you said BYE three times in a row
        break
    elsif reply == reply.upcase 
        puts "NO, NOT SINCE #{rand(1930..1950)}!" #we put a random number between 1930 and 1950
        next
    else
        next
    end
end