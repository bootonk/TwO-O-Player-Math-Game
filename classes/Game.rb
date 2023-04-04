class Game
  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new('P1')
    @player2 = Player.new('P2')
    @current_player = @player1
  end

  def toggle_current_player
    if @current_player == @player1 
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def call
    while @player1.lives != 0 && @player2.lives != 0
      new_turn = Turn.new(@current_player)
      result = new_turn.call
      
      unless result 
        # puts !result
        @current_player.lose_a_life
      end
      
      puts "#{@player1.name} #{@player1.lives}/3 vs #{@player2.name} #{@player2.lives}/3"
      toggle_current_player()
      
    end
    puts "Game over, #{@current_player.name} wins with #{@current_player.lives}/3."
  end

end