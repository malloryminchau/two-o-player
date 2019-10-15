class Player
  attr_reader :name
  attr_accessor :lives
  def initialize(name)
    @lives = 3
    @name = name
  end

end

class Game 



  def initialize(play1, play2)
    @player1 = play1
    @player2 = play2
    @current_player = @player1
    puts "---Player 1's turn---"
  end

  def turn

    while @player1.lives > 0 && @player2.lives > 0

      num1 = rand(1...20)
      num2 = rand(1...20)
      answer = num1 + num2
      puts "What is #{num1} + #{num2}"
      input = gets.chomp()

      if input == answer.to_s
        puts "CORRECT WOOT" 
      else 
        @current_player.lives = @current_player.lives - 1
        puts "NOOOOOOOOOO"
        if @current_player == @player1
          @player = "Player 1"
        else
          @player = "Player 2"
        end
        puts "#{@player} has #{@current_player.lives} lives"
      end
      
      if @player1.lives < 1 || @player2.lives < 1 
        return puts "---GAME OVER---"
      else
        player_turn
      end
    end
  end

  def player_turn
    if @current_player == @player1
      @current_player = @player2
      puts "---Player 2's turn---"
    else
      @current_player = @player1
      puts "---Player 1's turn---"
    end
  end

end