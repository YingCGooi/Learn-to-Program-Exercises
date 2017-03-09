#Happy Birthday! Ask what year a person was born in, then the month, then the day. 
#Figure out how old they are and give them a big SPANK! for each birthday they have had.

puts "What year were you born in?"
year = gets.chomp

puts "Which month were you born in?"
month = gets.chomp

puts "Which day were you born in?"
day = gets.chomp

age = (Time.now - Time.mktime(year, month, day))/(3600*24*365.25) 
#we use this approximation to calculate number of years

puts "You are #{age.round(1)} years old!"