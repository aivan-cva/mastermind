require './Peg.rb'

class Board
  def initialize(p1,p2)
    @secret_code = []
    @board = []
    @player_maker = p1
    @player_breaker = p2
  end
  attr_reader :secret_code

  def make_row
    row = @player_breaker.make_code
    color_row = row.map do |el|
                  Peg.new(el).peg
                end
    puts color_row
    color_row
  end

  def print_board
    puts @board
  end
end
