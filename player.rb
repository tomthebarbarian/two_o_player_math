class Player
  initialize name
    @turn = false
    @lives = 3
    @name = name

  attr_accessor :turn, :lives

  def turn_statement
    if (turn) 
      puts "It's #{name}'s turn"
    end
  end
end

player1 = Player('Player 1')
player1.turn = true

player2 = Player('Player 2')