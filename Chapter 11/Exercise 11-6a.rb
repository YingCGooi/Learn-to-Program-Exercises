require 'fileutils'
Dir.chdir '/home/ubuntu/workspace/Pictures/XmasRename' #we are using Cloud9 in this case

pic_names = Dir['/home/ubuntu/workspace/Pictures/Xmas/*.{JPG,jpg}']


puts 'What would you like to call this batch?'
batch_name = gets.chomp

print 'Downloading ' + pic_names.length.to_s + ' files:  '

pic_number = 1

pic_names.each do |name|
  print '.' #this is our progress bar
  
  new_name = if pic_number < 10
    batch_name + '0'  + pic_number.to_s + '.jpg'
  else
    batch_name        + pic_number.to_s + '.jpg'
  end
  
  if File.exist?(new_name)
    puts "Error, #{new_name} already exist in destination folder!" #sends error msg if same filename already exist
  else
    File.rename name,new_name
    puts "#{name} has been renamed to #{new_name} and moved to destination folder." 
  end
  
  pic_number = pic_number + 1
end

puts
puts 'Done, cutie!'