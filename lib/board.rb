class Board
  attr_reader :size, :spaces, :mark
  def initialize(opts = {})
    @size = opts[:size]
    @spaces = [nil] * size ** 2
  end

  def mark(index, player)
    raise ArgumentError.new("You cannot mark an already marked space") if @spaces[index] != nil
    @spaces[index] = player
  end

end