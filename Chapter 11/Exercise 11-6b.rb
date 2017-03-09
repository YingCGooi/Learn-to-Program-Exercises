Dir.chdir '/home/ubuntu/workspace/Music'

def shuffle(some_array)
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


music_names = Dir['/home/ubuntu/workspace/Music/**/*.{mp3,MP3}']
shuffled_music_names = shuffle(music_names)

puts shuffled_music_names


File.open '/home/ubuntu/workspace/Music/playlist.m3u', 'w' do |file|
  shuffled_music_names.each do |name|
    file.write("#{name}\n") #we write every single file name into the new file, putting a new line at the end of each line
  end
end



    