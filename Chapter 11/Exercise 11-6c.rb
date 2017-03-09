Dir.chdir '/home/ubuntu/workspace/Music'

def music_shuffle(array)
    sorted_array = []
    recursive_sort(array, sorted_array)
    sorted_array
end

def recursive_sort(array, sorted_array)
    random_index = rand(0..(array.size-1)) #we use rand instead of sample, this will return a really mixed result
    sorted_array << array[random_index] #we move the first random element into the new array and delete the element
    array.delete_at(random_index)
    recursive_sort(array,sorted_array) if array != [] #we stop when our original array is empty
end


music_names = Dir['/home/ubuntu/workspace/Music/**/*.{mp3,MP3}']
shuffled_music_names = music_shuffle(music_names)

puts shuffled_music_names


File.open '/home/ubuntu/workspace/Music/playlist.m3u', 'w' do |file|
  shuffled_music_names.each do |name|
    file.write("#{name}\n") #we write every single file name into the new file, putting a new line at the end of each line
  end
end



    