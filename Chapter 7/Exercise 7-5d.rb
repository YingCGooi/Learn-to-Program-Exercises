#Leap Years. Write a program which will ask for a starting year and an ending year, 
#and then puts all of the leap years between them (and including them, if they are also leap years). 
#Leap years are years divisible by four (like 1984 and 2004). 
#However, years divisible by 100 are not leap years (such as 1800 and 1900) 
#unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years).

def leap_years(starting,ending) #we need to pass in two arguments for starting and ending years
    for i in (starting).upto(ending) #we loop from starting to ending years
    
        #condition: divisible by 4 and not divisible by 100, OR divisible by 400
        if ((i % 4 == 0) && (i % 100 != 0)) || (i % 400 == 0)
            print "#{i}, " #print out each valid year
        end
    end
end

puts ">> To see a list of leap years, enter a starting year:"
starting = gets.chomp.to_i #retrieve user input on starting year, converts to integer

puts ">> Enter an ending year:"
ending = gets.chomp.to_i #retrieve user input on ending year, converts to integer

puts "List of leap years between #{starting} and #{ending}:"
leap_years(starting,ending) #pass in the user inputs as parameters to print out each valid year