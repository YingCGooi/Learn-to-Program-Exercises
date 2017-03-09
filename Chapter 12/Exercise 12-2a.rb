#One billion seconds... Find out the exact second you were born (if you can). 
#Figure out when you will turn (or perhaps when you did turn?) one billion seconds old. Then go mark your calendar.

time_of_birth = Time.mktime(1994, 4, 16)
billion_sec_old = time_of_birth + 1_000_000_000

puts billion_sec_old