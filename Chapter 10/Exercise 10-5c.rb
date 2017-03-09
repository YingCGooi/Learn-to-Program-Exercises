#"Ninety-nine bottles of beer..." Using englishNumber and your old program, 
#write out the lyrics to this song the right way this time. 
#Punish your computer: have it start at 9999.

def english_number(number)

if number <= 0
return "No more" #we want to print "no more" bottles instead of "zero" bottles
end

# no more special cases, no more returns

num_string = '' # This is the string we will return, define it an start 'empty'

ones_place = [ 'one', 'two', 'three',
'four', 'five', 'six',
'seven', 'eight', 'nine']

tens_place = [ 'ten', 'twenty', 'thirty',
'forty', 'fifty', 'sixty',
'seventy', 'eighty', 'ninty']

teenagers = [ 'eleven', 'twelve', 'thirteen',
'fourteen', 'fifteen', 'sixteen',
'seventeen', 'eighteen', 'nineteen']


# "left" is how much of the number we still have to write
# "write" is which part we are writing out at the time

left = number

# trillions
write = left/1_000_000_000_000
left = left - write*1_000_000_000_000

if write > 0
trillions = english_number write
num_string = num_string + trillions + ' trillion'

if left > 0
num_string = num_string + ' '
end
end

# billions
write = left/1_000_000_000
left = left - write*1_000_000_000

if write > 0
billions = english_number write
num_string = num_string + billions + ' billion'

if left > 0
num_string = num_string + ' '
end
end

# millions
write = left/1_000_000
left = left - write*1_000_000

if write > 0
millions = english_number write
num_string = num_string + millions + ' million'

if left > 0
num_string = num_string + ' '
end
end

# thousands
write = left/1000
left = left - write*1000

if write > 0
thousands = english_number write
num_string = num_string + thousands + ' thousand'

if left > 0
num_string = num_string + ' '
end
end

write = left/100 # how many hundreds left
left = left - write*100 # subtract off those hundreds

if write > 0
# recursion
hundreds = english_number write
num_string = num_string + hundreds + ' hundred'

if left > 0
# adds a space
num_string = num_string + ' '
end
end

write = left/10 # how many tens left
left = left - write*10 # subtract off those tens

if write > 0
if ((write == 1) and (left > 0))
# exception for teenagers
num_string = num_string + teenagers[left-1]
# -1 because of the array ordering [0] is eleven etc.
# with teenagers the digit in the ones place is taken care of so nothing left
left = 0
else
num_string = num_string + tens_place[write-1]
end

if left > 0
# add a space
num_string = num_string + '-'
end
end

write = left # how many ones left
left = 0 # subtract off those ones

if write > 0
num_string = num_string + ones_place[write-1]
end

# now we just return the num_string

num_string
end



for i in (9999).downto(0) #we start from 99 bottles down to no bottles
  #when we are down to our last bottle
  if i == 1 
    num_of_bottles = 1
    less_one = "no more" #we want to print "no more bottles on the wall" instead of "0 bottles on the wall"
    
  else
    num_of_bottles = i #we want the number that counts down to be the number of bottles
    less_one = i - 1 #the next number of bottles
  end
  puts ""
  puts "#{english_number(num_of_bottles)} bottles of beer on the wall, #{english_number(num_of_bottles)} bottles of beer." 
  #the default line to be printed, we want the number of bottles to vary.
  puts "Take one down and pass it around, #{english_number(less_one.to_i)} bottles of beer on the wall." if i != 0
  #we will print a different line at the end when there are no bottles left
end
  puts "Go to the store and buy some more, 9999 bottles of beer on the wall."
  