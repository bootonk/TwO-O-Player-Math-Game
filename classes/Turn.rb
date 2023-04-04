class Turn

  def initialize(current_player)
    @player = current_player
    @num1 = rand(1...20)
    @num2 = rand(1...20)
  end

  def call
    puts "#{@player.name}: What is #{@num1} + #{@num2}"

    result = gets.chomp.to_i

    puts "#{@player.name}: Bummer! Incorrect" if result != @num1 + @num2 
    puts "#{@player.name}: Good one! Correct" if result == @num1 + @num2 

    result == @num1 + @num2
  end

end