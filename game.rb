class Game
  attr_accessor :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players[0]
  end

  def switch_player
    @current_player = @players.rotate![0]
  end

  def start_game
    
  end
end