class Game
  attr_reader :board, :player_1, :player_2
  def initialize(opts = {})
    @board = opts.fetch(:board, Board.new)
    @player_1 = opts[:player_1]
    @player_2 = opts[:player_2]
  end

  def over?
    @board.winner?(player_1)
    @board.winner?(player_2)
  end
end
