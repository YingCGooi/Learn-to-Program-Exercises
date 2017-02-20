#So here's something for you to do in order to play around more with  center, ljust, and rjust: 
#Write a program which will display a Table of Contents so that it looks like this:
#                Table of Contents                
                                                 
#Chapter 1:  Numbers                        page 1
#Chapter 2:  Letters                       page 72
#Chapter 3:  Variables                    page 118

width = 50
puts('Table of Contents'.center(width))
puts('Chapter 1:  Numbers'.ljust(width/2) + 'page   1'.rjust(width/2))
puts('Chapter 2:  Letters'.ljust(width/2) + 'page  72'.rjust(width/2))
puts('Chapter 3:  Variables'.ljust(width/2) + 'page 118'.rjust(width/2))
