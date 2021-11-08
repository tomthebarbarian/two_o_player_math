# runs the app
require "./player"
require "./questions"
# initializes the 2

def run_program 
  # setup players and turns
  player1 = Player.new('Player 1')
  player1.turn = true
  player2 = Player.new('Player 2')

  questionsA = Questions.new('1')
  # puts player1.name

  currplayer = player1.turn ? player1 : player2

  while (player1.lives > 0 && player2.lives > 0 )
    currplayer = player1.turn ? player1 : player2
    # Ask and generate question
    puts "Please type a number from 1 to 20 to get a question"
    currQuestion = questionsA.generate_question $stdin.gets.chomp
    
    # Check Response
    response = ($stdin.gets.chomp)
    currQuestion.verify currplayer response
  end
  puts "#{currplayer.name} has lost, thanks for playing"
  exit(0)
end