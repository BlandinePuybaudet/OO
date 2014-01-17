class OrangeTree

  def initialize 
    @orange_count = 0
    @age = 0
    @height = 0
    @death_age = rand(57..83)
  end

  def measure_height
    "#{@height.round(2)} m "
  end

  def alive?
    @age < @death_age
  end
  
  def count_the_oranges
    # Count the oranges of the tree if alive
    alive? ? "you have #{@orange_count} oranges in your tree" : "you tree is dead it can't produce oranges anymore"
  end
  
  def pick_oranges(picked_oranges=1)
    # Pick an orange to the tree
    if alive?
      if @age >= 5
        if @orange_count > picked_oranges
          @orange_count -= picked_oranges 
          "you picked #{picked_oranges} oranges... hum delicious" 
        elsif @orange_count == @picked_oranges
          @orange_count -= picked_oranges 
          "you picked all the oranges!"
        else
          @orange_count = 0
        end    
      else @age < 5
        "your tree is too young, you have to wait"
      end 
    else
      "your tree is dead"
    end
  end
  
  def one_year_passes!
    @height += 0.6 + (1/(@age+1.0))
    @age += 1
    @orange_count = 0
    #@age < 5 ?  (@orange_count = 0)  : (@orange_count = 80 + rand(24)) 
    # il manque la prise en cpte de l'age de mort de l'arbre
    if alive?
      if @age >= 5
        @orange_count = 80 + rand(24)
        "this year your tree grew to #{@height.round(2)} m tall, and produced #{@orange_count} oranges"
      else @age < 5
        "your tree is too young, you have to wait"
      end
    else
      "your tree is dead"  
    end
  end
 
end

oranger = OrangeTree.new
3.times{puts oranger.one_year_passes!}
12.times {puts oranger.one_year_passes!}
puts oranger.measure_height
puts oranger.count_the_oranges
puts oranger.pick_oranges(30)

