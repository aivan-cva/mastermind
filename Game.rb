require './Board.rb'

class Game
  def initialize(player_maker, player_breaker)
    @player_maker = player_maker
    @player_breaker = player_breaker
    @board = Board.new()
    @player_won = false
  end

  def play
    secret = @player_maker.make_code
    @board.secret_code = secret
    puts "Secret Code #{@board.secret_code}"


    loop do
      puts @player_won
      if @player_won
        puts "Congratulations"
        return
      end
      guess = @player_breaker.make_code
      @board.guesses << guess
      puts "Guess: #{guess}"
      puts "Guesses: #{@board.guesses}"
      compare_codes(guess,secret)
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
      @board.feedback << feedback
      @player_won = correct_guess?(feedback)
      puts "Feedback: #{@board.feedback}"
  end

  def correct_guess?(guess)
    guess.all? {|color| color == 'white'}
  end

end
