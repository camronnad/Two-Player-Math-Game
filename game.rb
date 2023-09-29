require_relative 'players'
require_relative 'questions'

class Game
  attr_accessor :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players[0]
  end

  def switch_player
    @current_player = @players.rotate![0]
  end

  def game_over 
    if @current_player.lives <= 0
      puts "GAME OVER! #{@current_player.name} lost!"
      exit
    end 

  end
  
  def start_game
    while true  # Using a loop to keep asking questions
      puts "#{@current_player.name}'s Turn:"  # Indicating who's turn it is
      
      question = Questions.new
      puts "What is #{question.num1} + #{question.num2}?"
    
      user_input = gets.chomp.to_i
      is_correct = question.validate_answer(user_input)
    
      if is_correct
        puts "Correct!"
      else
        puts "Wrong answer!"
        @current_player.lose_a_life
        puts "#{@current_player.name} lost a life!"
        game_over  # Call game_over to check if the game should end
      end
      
      switch_player  # Switch player for the next turn
    end
  end
  
  
  
end
