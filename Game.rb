require './Board.rb'

class Game
  def initialize(player_maker,player_breaker)
    @player_maker = player_maker
    @player_breaker = player_breaker
    @board = Board.new()
    @player_won = false
  end

  def play
    secret = @player_maker.make_code
    @board.secret_code = secret



    12.times do

      guess = @player_breaker.make_code
      @board.guesses << guess
      compare_codes(guess,secret)
      @board.print_board
      if @player_won
        puts "WIN"
        @board.print_secret
        return
      end
    end

    unless @player_won
      puts 'LOOSE'
      @board.print_secret
    end

  end

  def compare_codes(guess, secret)
      feedback = []
      guess.each_with_index do |color, i|
        if secret.include?(color)
          if guess[i] == secret[i]
            feedback << 'white'
          else
            feedback << 'red'
          end
        else
          feedback << 'black'
        end
      end
      @board.feedback << feedback.shuffle
      @player_won = correct_guess?(feedback)
  end

  def correct_guess?(guess)
    guess.all? {|color| color == 'white'}
  end

end
