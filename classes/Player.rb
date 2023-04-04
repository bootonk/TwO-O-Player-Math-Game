class Player
  attr_reader :name
  attr_accessor :lives
  
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_a_life
    @lives -= 1
  end

  def game_over?
    @lives  == 0
  end


end
