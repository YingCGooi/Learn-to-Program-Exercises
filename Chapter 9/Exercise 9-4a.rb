#Fix up the ask method. That ask method I showed you was alright, but I bet you could do better.
#Try to clean it up by removing the variables good_answer and answer. 
#You'll have to use return to exit from the loop.

def ask question
    loop do #we need a loop so that the question can be asked again if the response is neither 'yes' nor 'no'
        puts question
        reply = gets.chomp.downcase
        if reply == "yes"
            return true
        elsif reply == "no"
            return false
        else
            puts 'Please answer "yes" or "no".'
            next
        end
    end
end

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichanges?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed