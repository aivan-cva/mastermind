require './Player.rb'
require 'pastel'

class CPUPlayer < Player
  def initialize
    super
  end

  def make_code
    selected_colors = self.COLORS.sample(4)
    selected_colors
  end
end
