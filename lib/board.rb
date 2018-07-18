class Board
  attr_reader :size, :spaces, :mark
  def initialize(opts = {})
    @size = opts[:size]
    @spaces = [nil] * size ** 2
  end

  def mark(index, player)
    @spaces[index] = player
  end

end
