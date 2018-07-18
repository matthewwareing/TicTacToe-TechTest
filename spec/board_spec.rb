require 'board.rb'

describe Board do
    it 'should take a board size when initialising' do
        board = Board.new(size: 3)
        expect(board.size).to eq 3
    end
end