# runs the app
require "./player"
# initializes the 2

def run_program 
  # setup players and turns
  player1 = Player('Player 1')
  player1.turn = true
  player2 = Player('Player 2')
  while player1.lives > 0 && player2.lives > 0 
    currplayer = player1.turn? player1 : player2
    
    

  end
  exit(0)
end