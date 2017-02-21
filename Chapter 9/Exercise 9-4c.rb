#"Modern" Roman numerals. Rewrite your previous method to return the new-style Roman numerals,
#so when someone calls roman_numeral 4, it should return 'IV'

def number_into_digits(number) #converts numbers into an arrays of its digits
    string_array = number.to_s.split("")
    return string_array.map do |x|
      x.to_i
    end
end

def roman_numeral(number) #inputs integer as argument, outputs an array of roman numerals
        number_length = number.to_s.length
        roman_string_arr = []
        
        #we loop through each digit to determine its respective symbol combination
        number_into_digits(number).each do |x|
          if    number_length == 4; one_symbol = "M" #condition table: one_symbols are either ones, tens, hundreds or thousands
          elsif number_length == 3; one_symbol = "C"; five_symbol = "D"; nine_symbol = "CM" #five_symbols are fives, fifties or five-dundreds
          elsif number_length == 2; one_symbol = "X"; five_symbol = "L"; nine_symbol = "XC"
          elsif number_length == 1; one_symbol = "I"; five_symbol = "V"; nine_symbol = "IX"
          end
            if x >= 5
              if x != 9
                roman_numeral = "#{five_symbol}#{(one_symbol * (x - 5))}" #Eg. for 7, a five_symbol "V" and then two one_symbols "II"
              else
                roman_numeral = nine_symbol #Eg. for 9, "IX"
              end
            elsif x < 5
              if x != 4
                roman_numeral = "#{one_symbol}" * x #Eg. for 30, at the number_length 2, it returns three one_symbols "XXX"
              else
                roman_numeral = "#{one_symbol}#{five_symbol}" #Eg. for 400, at the number_length 3, it returns one_symbol and five_symbol"CD"
              end
            end 
            roman_string_arr << roman_numeral
          number_length -= 1
        end
    return roman_string_arr
end
        
loop do
  puts "Please enter a number between 1 and 3000 (type 'stop' to stop):"
  input = gets.chomp
  number = input.to_i
  break if input.to_s.downcase == "stop"
  if number.between?(1,3000)
    print "The old-school Roman numeral is: "
    roman_numeral(number).each do |x|
      print x
    end
  else
    puts "Please enter a valid number."
  end
  puts
end


