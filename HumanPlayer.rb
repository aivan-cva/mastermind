require './Player.rb'
require 'tty-prompt'
require 'pastel'

class HumanPlayer < Player
  def initialize
    super
  end

 def make_code
    selected_colors = []
    prompt = TTY::Prompt.new
    i = 4
    4.times do
      res = prompt.select("Select #{i} more") do |menu|
              self.COLORS.each { |color| menu.choice color }
            end
      selected_colors << res
      i -= 1
    end
    selected_colors
  end

end
