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
