#Old school Roman numerals. Write a method that, when passed an integer between 1 and 3000, returns a string
#containing the proper old-school Roman numeral. In other words, old_roman_numeral 4 should return 'IIII'.
#Make sure to test your method on a bunch of different numbers. Hint: Use the integer division and modulus method.
#For reference: I = 1; V = 5; X = 10; L = 50; C = 100; D = 500; M = 1000

def number_into_digits(number) #converts numbers into an arrays of its digits
    string_array = number.to_s.split("")
    return string_array.map do |x|
      x.to_i
    end
end

def old_roman_numeral(number) #inputs integer as argument, outputs an array of roman numerals
        number_length = number.to_s.length
        roman_string_arr = []
        
        #we loop through each digit to determine its respective symbol combination
        number_into_digits(number).each do |x|
          if    number_length == 4; one_symbol = "M" #condition table: one_symbols are either ones, tens, hundreds or thousands
          elsif number_length == 3; one_symbol = "C"; five_symbol = "D" #five_symbols are fives, fifties or five-dundreds
          elsif number_length == 2; one_symbol = "X"; five_symbol = "L"
          elsif number_length == 1; one_symbol = "I"; five_symbol = "V"
          end
          roman_string_arr << "#{five_symbol}#{(one_symbol * (x - 5))}" if x >= 5 #Eg: 7 consists of a five_symbol "V" and two one_symbol "I"
          roman_string_arr << "#{one_symbol}" * x if x < 5 #if the digit is less than 5, we only print the one_symbols
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
    old_roman_numeral(number).each do |x|
      print x
    end
  else
    puts "Please enter a valid number."
  end
  puts
end


