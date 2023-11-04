require 'pastel'

class Peg
  def initialize(color)
    @color = color
    @peg = "\u2B24"
  end
  attr_reader :color

  def peg
    pastel = Pastel.new()
    pastel.decorate(@peg,color.to_sym)
  end

  def to_s
    peg
  end
end
