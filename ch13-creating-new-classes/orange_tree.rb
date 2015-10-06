class OrangeTree
  def initialize
    @height = 0.5
    @orange_count = 0
    @age = 0
    @alive = true
  end
  def height
    "#{@height.round(1)}m"
  end
  def one_year_passes
    if @alive
      @age += 1
      @height = @height * (1 + 2/(@age)) + rand(101)/200.0
      @orange_count = (@height * (2 + rand(101)/300) + @age - (@age/4) ** 2).to_i
      if @age > 30
        @alive = false
        puts "Your tree has died from age"
      end
    else
      puts "Your tree withers sadly from the ravages of time"
    end
  end
  def count_the_oranges
    if @alive
      @orange_count
    else
      puts "Your tree rustles bleakly"
    end
  end
  def pick_an_orange
    if @alive
      if @orange_count > 0
        puts "You pick an orange. It was delicious"
        @orange_count -= 1
      else
        "There are no more oranges left! Wait until next year"
      end
    else
      "There are no oranges left and your tree will never bear fruit again."
    end
  end
end
