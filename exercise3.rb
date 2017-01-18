class Player

  def initialize (gold_coins = 0, health_points = 10, lives = 5, score = 0)

    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
    @score = score

  end

  def do_battle
    @health_points -= 1

    if @health_points == 0
      @lives -= 1
      @health_points = 10

      if @lives == 0
        restart
      end
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0
  end

  def level_up
    @lives += 1
  end

  def collect_treasure (treasure)
    @gold_coins += treasure
    if @gold_coins == 10
      @score += 1

      if @score == 10
        level_up
      end
    end
  end



end
