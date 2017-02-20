#Write the program we talked about at the very beginning of this chapter,
#one that asks us to type as many words as we want (one word per line, continuing until we press Enter on an empty line)
#and then repeats the words back to us in alphabetical order. Make sure to test your program thoroughly.

word_list = [] #declares the list of words as an array
puts "Type in as many words as you want (hit Enter after each word you type):"

loop do
    word = gets.chomp #stores user's input
    break if word == "" #we will stop the loop if user hits Enter
    word_list << word #inserts user's input into array
end

puts "The words that you typed in alphabetical order are:"
word_list.sort.each do |x| #prints out the list of words in alphabetical order
    puts x
end

