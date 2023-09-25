class Questions
  attr_reader :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def question
    "What does #{@num1} + #{@num2} equal?"
  end

  def validate_answer
    if user_answer == @answer
      return true
    else 
      return false
    end

end