class Player
  def initialize (name)
    @turn = false
    @lives = 3
    @name = name
  end
  attr_accessor :turn,
    :lives,
    :name

  def turn_statement
    if (turn) 
      puts "It's #{name}'s turn"
    end
  end

  def loselife
    self.lives=(lives - 1)

  end 
end
