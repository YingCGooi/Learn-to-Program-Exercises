#In a dictionary, case is irrelevant to the ordering.
#Make a new method to sort words (something like dictionary_sort)

word_list = [] #puts the list of words into an array
capitalized_list = [] #puts the list of capitalized words into another array
puts "Type in as many words as you want (hit Enter after each word you type):"

loop do
    word = gets.chomp #stores user's input
    break if word == "" #we will stop the loop if user hits Enter
    word_list << word #inserts user's input into array
end


def dictionary_sort(word_list)
  
    word_list.sort_by do |word| 
      word.downcase
    end
    
end



print dictionary_sort(word_list)