puts 'What would you like to name your baby dragon?'
name = gets.chomp
pet = Dragon.new name

@interactive? = true
while @interactive?
  puts "Please enter a command. Enter 'rest' if you would like to rest. Not that you're negligent, or anything..."
  puts "For a full list of the kind of things a good owner can do with their dragon, enter 'HELP!'"
  command = gets.chomp
  case command
  when "rest" then @interactive? == false
  when "feed" then self.feed
  when "walk" then self.walk
  when "bed"  then self.put_to_bed
  when "toss" then self.toss
  when "rock" then self.rock
  when "HELP!" then puts "Things you can do with your dragon include:"
    puts "'feed'ing it,"
    puts "'walk'ing it,"
    puts "putting it to 'bed',"
    puts "'toss'ing it in the air (not off, you sick bastard),"
    puts "and'rock'ing it to sleep."
  end
end