#Expand upon englishNumber. First, put in thousands. 
#So it should return 'one thousand' instead of 'ten hundred' and 
#'ten thousand' instead of 'one hundred hundred'.

def englishNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
#THOUSANDS --------------------------------------------------------
if number > 9999  || (number % 1000 < 10) && (number.to_s.length == 4) #we only evaluate the thousands if the number is ten thousand or more, 
    #or what's left is less than 10, eg: 3009
    left = number
    write = left/1000 #we write the first two digits as thousands
    left = left % 1000 if number > 9999 #we leave the last three digits to be written by hundreds and subsequently tens and ones
    left = left % 10 if number.to_s.length == 4 #we leave the last digit if it is a multiple of 1000 + 9 or less, eg. 3009
    
    thousands = englishNumber write #we write the first two digits
    numString = numString + thousands + ' thousand '
    if left < 100 && left > 0 #if what's left is between 1 and 99, we want to add the prefix 'and'
      numString = numString + 'and '
    end
end
  
#HUNDREDS ---------------------------------------------------------
  if number > 9999 # if number is more than 9999, we want the hundreds to get only one digit instead of two
    left = number
    write = (left % 1000)/100 #evaluates to only the 3rd digit (hundredth)
    left = left % 100 #we will leave the last 2 digits after we write the hundred digit
  else
    left = number
    left = number % 1000 if number % 1000 < 10
    write = left/100          # How many hundreds left to write out?
    left  = left - write*100  # Subtract off those hundreds.
  end
  
    if write > 0
      # Now here's a really sly trick:
      hundreds  = englishNumber write
      numString = numString + hundreds + ' hundred'
  
      if left > 0
        # So we don't write 'two hundredfifty-one'...
        numString = numString + ' and '
      end
    end
  
#TENS ------------------------------------------------------------
  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end
#ONES ------------------------------------------------------------
  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber(610)
puts englishNumber(100)
puts englishNumber(7100)
puts englishNumber(6000)
puts englishNumber(3211)
puts englishNumber(4569)
puts englishNumber(11237)
puts englishNumber(12002)
puts englishNumber(99999)
puts englishNumber(1000000000000)