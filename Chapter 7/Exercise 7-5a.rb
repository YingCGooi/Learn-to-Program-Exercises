for i in (99).downto(0) #we start from 99 bottles down to no bottles
  #when we are down to our last bottle
  if i == 1 
    num_of_bottles = 1
    less_one = "no more" #we want to print "no more bottles on the wall" instead of "0 bottles on the wall"
    
  #when we don't have any bottles left
  elsif i == 0
    num_of_bottles = "No more" #we want to print "No more bottles on the wall" instead of "0 bottles on the wall"
    
  else
    num_of_bottles = i #we want the number that counts down to be the number of bottles
    less_one = i - 1 #the next number of bottles
  end
  puts ""
  puts "#{num_of_bottles} bottles of beer on the wall, #{num_of_bottles} bottles of beer." #the default line to be printed, parsing in the variable of number of bottles
  puts "Take one down and pass it around, #{less_one} bottles of beer on the wall." if i != 0 #we will print a different line at the end when there are no bottles left
end
  puts "Go to the store and buy some more, 99 bottles of beer on the wall."
  