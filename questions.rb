class Questions
  initialize
    @question
    @answer
    @response
    @input
  
  attr_accessor 
    :question
    :answer
    :response
    :input

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
  # method verify checks the response against the current answer
  def verify stin_response


  def generate_question number
    puts QUESTIONS[number]
    self.response = $stdin.gets.chomp
    verify response
  end

end
