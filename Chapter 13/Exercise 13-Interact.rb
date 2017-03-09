#Write a program so that you can interact with your baby dragon. 
#You should be able to enter commands like  feed and walk, 
#and have those methods be called on your dragon. 
#Of course, since what you are inputting are just strings, 
#you will have to have some sort of method dispatch, 
#where your program checks which string was entered, and then calls the appropriate method.

class Dragon
  
  def initialize name
    @name = name
    @asleep = false
    $stuffInBelly = 10
    $stuffInIntestine = 0
    
    puts @name + ' is born.' 
  end
  
  
  def feed
    puts 'You fed ' + @name + '.'
    $stuffInBelly = 10
    passageOfTime
  end
  
  def walk
    puts 'You walk ' + @name + '.'
    $stuffInIntestine = 0
    passageOfTime
  end
  
  def putToBed
    puts 'You put ' + @name + 'to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
        puts @name + ' snores,filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end
  
  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end
  
  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end
  
  
  def hungry?
    $stuffInBelly <= 2
  end
  
  def poopy?
    $stuffInIntestine >= 8
  end
 
  def passageOfTime
    if $stuffInBelly > 0
      $stuffInBelly -= 1
      $stuffInIntestine += 1
    else
      if @asleep
        @asleep = false
        puts '>>He wakes up suddenly!'
      end
      puts '>>'+ @name + ' is starving! In desperation, he ate YOU!'
      exit
    end
    
    if $stuffInIntestine >= 10
      $stuffInIntestine = 0
      puts '>>Whoops! ' + @name + ' had an accident...'
    end
  
    if hungry?
      if @asleep
        @asleep = false
        puts '>>He wakes up suddenly!'
      end
      puts '>>' + @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts '>>He wakes up suddenly!'
      end
      puts '>>' + @name + ' does the potty dance...'
    end
    
  end
end

  

puts "What would you like the name of your Dragon to be?"
@name = gets.chomp
pet = Dragon.new @name

loop do
  puts "What would you like #{@name} to do? Available commands: "
  puts "feed, toss, walk ,putToBed, rock"
  action = gets.chomp
  case action
    when "feed" then pet.feed;
    when "toss" then pet.toss;
    when "walk" then pet.walk;
    when "putToBed" then pet.putToBed;
    when "rock" then pet.rock;
  end
  puts "-------------------------------------------------"
  puts "|Hunger level = #{10 - $stuffInBelly}; Poopy level = #{$stuffInIntestine}; Awake = #{!@asleep}|"
  puts "-------------------------------------------------"
end
