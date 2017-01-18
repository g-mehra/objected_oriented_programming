class Cats

  def initialize (name, preferred_food, meal_time)

    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time.to_i

  end


  def eats_at()
    if @meal_time < 12
      return "#{@meal_time} AM"
    else
      return "#{@meal_time} PM"
    end
  end

  def meow
    p "My name is #{@name} and I eat at #{eats_at}"
  end


end
