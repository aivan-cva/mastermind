require './Game.rb'
require './Player.rb'


maker = Player.new("maker")
breaker = Player.new('Breaker')
new_game = Game.new(maker,breaker)


new_game.play
