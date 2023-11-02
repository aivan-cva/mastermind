require './Board.rb'

class Game
  def initialize(player_maker, player_breaker)
    @player_maker = player_maker
    @player_breaker = player_breaker
    @board = Board.new(@player_maker,@player_breaker)
  end

  def play
    @board.make_row
  end

end
