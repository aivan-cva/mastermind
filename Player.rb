require 'tty-prompt'

class Player
  def initialize(role)
    @role = role
    @colors_picked = []
  end
  attr_reader :colors_picked

  def make_code
    colors = ['blue','red','yellow','green','magenta','cyan']
    prompt = TTY::Prompt.new
    @colors_picked = prompt.multi_select('Select 4 pegs', colors, min: 4, max: 4)
  end

  def to_s
    @colors_picked
  end
end
