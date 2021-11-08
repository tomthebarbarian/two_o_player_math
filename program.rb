# runs the app
require "./player"
require "./questions"
# initializes the 2

def status player1, player2
  puts "#{player1.name} has #{player1.lives} lives left"
  puts "#{player2.name} has #{player2.lives} lives left"
end

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
    
    puts "#{currplayer.name}'s turn"
    # Ask and generate question
    puts "Please type a number from 1 to 20 to get a question"
    question_select = $stdin.gets.chomp
    if (question_select.to_i == 0)
      puts "Not a number try again"
      redo
    end
    puts question_select
    currQuestion = questionsA.generate_question question_select
    
    # Check Response
    response = ($stdin.gets.chomp)
    if (response.to_i != 0)
      questionsA.verify(currplayer,response) 
      status(player1, player2)
      puts "Next Question"
      questionsA.swap_turn(player1,player2)
    else
      puts "Not a number try again"
      redo
    end
  end

  puts "#{currplayer.name} has lost, thanks for playing"
  exit(0)
end