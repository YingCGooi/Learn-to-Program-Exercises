#Now that you've finished your new sorting algorithm, how about the opposite? 
#Write a shuffle method that takes an array and returns a totally shuffled version.
#How can you test to make sure you are getting a perfect shuffle? What would you even say a perfect shuffle would be?
#Now test for it

word_list = [] #declares the list of words as an array
puts "Type in as many words as you want (hit Enter after each word you type):"

loop do
    word = gets.chomp #stores user's input
    break if word == "" #we will stop the loop if user hits Enter
    word_list << word #inserts user's input into array
end


def sort(some_array)
    sorted_array = []
    recursive_sort(some_array, sorted_array)
    sorted_array
end

def recursive_sort(some_array, sorted_array)
    random_value = some_array.sample
    sorted_array << random_value #we move the random element into the new array.
    some_array.delete_at some_array.index random_value #we delete the first occurence of this value in original word list
    recursive_sort(some_array,sorted_array) if some_array != [] #we stop when our original array is empty
end


print sort(word_list)