require 'game'

describe Game do
  it 'should return whether the game is over' do
    board = double('board')
    allow(board).to receive(:winner?) { true }
    game = Game.new(board: board)
    expect(game.over?).to eq true
  end

end
