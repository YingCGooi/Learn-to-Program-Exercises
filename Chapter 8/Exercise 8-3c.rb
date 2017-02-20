#Rewrite your Table of Contents program on page 37 (from the chapter on methods). 
#Start the program with an array holding all of the information for your Table of Contents 
#(chapter names, page numbers, etc.). 
#Then print out the information from the array in a beautifully formatted Table of Contents.

print_info =    [["Table of Contents"], 
                ["Getting Started", "Numbers", "Letters"], 
                ["1", "9", "13"]]
#we put the title as the first element, chapter names as the second, and page numbers as the third element

def print_out(print_info)
    line_width = 40
    
    puts print_info[0][0].center(line_width) #we print the title first
    
    print_info[1].each_with_index do |v,i| #we use each_with_index so that we can loop through each element in the sub-arrays
        print "Chapter #{i + 1}: #{print_info[1][i].ljust(line_width/2)}" #prints out the prefix "Chapter#:" and the names
        print "Page #{print_info[2][i]}".rjust(line_width/2) #prints out the 
        print "\n"
    end
    

end
    
print_out(print_info)
    
