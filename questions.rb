class Questions
  
  QUESTIONS = {
    "1" => ["What is 1 + 1", "2"],
    "2" => ["What is 2 + 2", "4"],
    "3" => ["What is 1 + 1", "2"],
    "4" => ["What is 1 + 1", "2"],
    "5" => ["What is 1 + 1", "2"],
    "6" => ["What is 1 + 1", "2"],
    "7" => ["What is 1 + 1", "2"],
    "8" => ["What is 1 + 1", "2"],
    "9" => ["What is 1 + 1", "2"],
    "10" => ["What is 1 + 1", "2"],
    "11" => ["What is 1 + 1", "2"],
    "12" => ["What is 1 + 1", "2"],
    "13" => ["What is 1 + 1", "2"],
    "14" => ["What is 1 + 1", "2"],
    "15" => ["What is 1 + 1", "2"],
    "16" => ["What is 1 + 1", "2"],
    "17" => ["What is 1 + 1", "2"],
    "18" => ["What is 1 + 1", "2"],
    "19" => ["What is 1 + 1", "2"],
    "20" => ["What is 1 + 1", "2"]
  }

  RESPONSE = [
    'You are correct',
    'You are wrong'
  ]

  def initialize question_num
    @question = QUESTIONS[question_num][0]
    @answer = QUESTIONS[question_num][1]
    @input
  end

  attr_accessor :question,
    :answer,
    :input

  # method verify checks the response against the current answer
  def verify player, response
    # puts answer
    if response == answer
      puts RESPONSE[0]
    else
      puts RESPONSE[1]
      player.loselife
    end
  end
  
  # Method generate_question takes in an integer number from 1 to 20
  # and asks the question with key == to number
  def generate_question number
    puts QUESTIONS[number][0]
    self.answer=(QUESTIONS[number][1])
  end

  # Method swap_turn takes in 2 instances of player
  # and swithes their turn boolean variable
  def swap_turn player1, player2
    player1.turn=(!player1.turn)
    player2.turn=(!player2.turn)
  end
end
