class Player
  initialize name
    @turn = false
    @lives = 3
    @name = name

  attr_accessor :turn, :lives, :name

  def turn_statement
    if (turn) 
      puts "It's #{name}'s turn"
    end
  end

  def loselife
    self.lives
  end
end
