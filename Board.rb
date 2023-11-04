require './Peg.rb'
require 'tty-table'

class Board
  def initialize()
    @secret_code = []
    @guesses = []
    @feedback = []
    @table = TTY::Table.new(["Guesses","Feedback"], [['a','b']])
  end
  attr_accessor :secret_code, :guesses, :feedback, :table


  def print_board
    puts @table.render(:ascii)
  end

end
