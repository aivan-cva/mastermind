require './Game.rb'
require './HumanPlayer.rb'
require './CPUPlayer.rb'
require 'tty-prompt'



def start_game
  prompt = TTY::Prompt.new
  player_choice = prompt.select("Select your role:") do |menu|
    menu.choice 'Maker'
    menu.choice "Breaker"
  end

  if player_choice == 'Maker'
    new_game = Game.new(HumanPlayer.new,CPUPlayer.new)
  else
    new_game = Game.new(CPUPlayer.new,HumanPlayer.new)
  end


  new_game.play
end


start_game
