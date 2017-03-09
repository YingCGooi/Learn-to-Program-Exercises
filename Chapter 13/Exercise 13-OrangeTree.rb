#Make an OrangeTree class. It should have a  height method which returns its height, 
#and a oneYearPasses method, which, when called, ages the tree one year. 
#Each year the tree grows taller (however much you think an orange tree should grow in a year), 
#and after some number of years (again, your call) the tree should die. 
#For the first few years, it should not produce fruit, but after a while it should, 
#and I guess that older trees produce more each year than younger trees... 
#whatever you think makes most sense. And, of course, you should be able to countTheOranges 
#(which returns the number of oranges on the tree), 
#and pickAnOrange (which reduces the @orangeCount by one and returns a string telling you 
#how delicious the orange was, or else it just tells you that there are no more oranges to pick this year). 
#Make sure that any oranges you don't pick one year fall off before the next year.

class OrangeTree
  
  def initialize name
    $name = name
    $height = 1
    @age = 1
    @alive = true
    $fruitings = 0
    @inventory = 0
  end
  
  def height
    $height
  end
  
  def oneYearPasses
    @age += 1
    $height += 2
    
    if @age > 13
      $fruitings = 0
    elsif @age > 9
      $fruitings = 15 - @age
    elsif @age > 3
      $fruitings = (1.2 * @age).round
    else
      $fruitings = 0
    end
    
    if @age >= rand(14..16)
      puts "Orange Tree #{name} has died."
      @alive = false
      exit
    end
  end
  
  def countTheOranges
    puts ">>Basket = #{@inventory} oranges | Fruits on the tree = #{$fruitings} oranges"
    puts "Age of tree = #{@age}"
  end
  
  def pickAnOrange
    if $fruitings > 0
    @inventory += 1
    $fruitings -= 1
    puts "You picked up an orange! It is #{["sweet","sour","bitter"].sample}!"
    else
    puts "There are no more fruits on the tree to be picked!"
    end
  end
  
  
end


  puts "Would you like to adopt an orange tree? If yes, what name would you call it?"
  name = gets.chomp
  tree = OrangeTree.new name
  puts "#{$name} is adopted:"
  
loop do
  print "=" * $height
  puts "3"
  puts "Would you like to pick an orange? (yes/no). This year #{$name} beared #{$fruitings} oranges!"
  if gets.chomp.downcase == 'yes'
    tree.pickAnOrange
    tree.countTheOranges
  else
    tree.countTheOranges
  end
    tree.oneYearPasses
  break if @alive == false
end
