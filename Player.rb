require 'tty-prompt'
require 'pastel'

class Player
  pastel = Pastel.new
  COLORS = ['blue','red','yellow','green','magenta','cyan']

  def initialize(role)
    @role = role
  end


  def make_code
    selected_colors = []
    prompt = TTY::Prompt.new
    i = 4
    4.times do
      res = prompt.select("Select #{i} more}") do |menu|
              COLORS.each { |color| menu.choice color }
            end
      selected_colors << res
      i -= 1
    end

    selected_colors
  end

end
