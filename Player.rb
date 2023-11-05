require 'tty-prompt'
require 'pastel'

class Player
  pastel = Pastel.new


  def initialize()

    @COLORS = ['blue','red','yellow','green','magenta','cyan']
  end

  attr_accessor :COLORS


end
