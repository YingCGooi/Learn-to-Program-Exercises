#Try writing the above program without using the sort method. 
#A large part of programming is solving problems, so get all the practice you can!

word_list = [] #declares the list of words as an array
puts "Type in as many words as you want (hit Enter after each word you type):"

loop do
    word = gets.chomp #stores user's input
    break if word == "" #we will stop the loop if user hits Enter
    word_list << word #inserts user's input into array
end

puts "The words that you typed in alphabetical order are:"
for i in (0).upto(word_list.length - 1) #the last index number is one less than the number of elements in the array
    i2 = i + 1 #declare a variable so for the next index number
    for i2 in (0).upto(word_list.length - 2) #we want the inner loop to compare the current element with the rest of the next elements
        if word_list[i] < word_list[i2] #if the next element is larger (precedes)
            word_list[i], word_list[i2] = word_list[i2], word_list[i] #we swap the element
        end
    end
end

print word_list

