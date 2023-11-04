require './Peg.rb'
require 'tty-table'

class Board
  def initialize()
    @secret_code = []
    @guesses = []
    @feedback = []
  end
  attr_accessor :secret_code, :guesses, :feedback, :table


  def print_board
    pegs_guess = @guesses.map{|guess| guess.map{|color| Peg.new(color).peg}}
    fb_guess = @feedback.map{|guess| guess.map{|color| Peg.new(color).peg}}

    str_guesses =  pegs_guess.map { |guess| guess.join(' ')  }
    str_feedback =  fb_guess.map { |guess| guess.join(' ')  }
    zip = str_guesses.zip(str_feedback)
    table = TTY::Table.new(zip)
    puts table.render(:ascii)
  end

  def print_secret
    secret_pegs = @secret_code.map { |color| Peg.new(color).peg }
    puts "The secret code was: #{secret_pegs.join(' ')}"
  end

end
