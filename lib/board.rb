require 'pry'
class Board
  attr_reader :size, :spaces, :mark, :solutions
  def initialize(opts = {})
    @size = opts[:size]
    @spaces = [nil] * size**2
  end

  def mark(index, player)
    raise ArgumentError.new("You cannot mark an already marked space") if spaces[index] != nil
    spaces[index] = player
  end

  def player_marks(player)
    spaces.each_index.select { |square| spaces[square] == player }
  end

  def winner?(player)
    winning_conditions.any? {|solution| (solution - player_marks(player)).empty? }
  end

  private

  def winning_conditions
    @solutions = [
     [0, 1, 2], [3, 4, 5], [6, 7, 8],
     [0, 3, 6], [1, 4, 7], [2, 5, 8],
     [0, 4, 8], [6, 4, 2]
   ]
  end
end
