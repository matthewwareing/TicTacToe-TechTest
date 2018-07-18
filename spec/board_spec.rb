require 'board.rb'

describe Board do
    it 'should return board size' do
        board = Board.new(size: 3)
        expect(board.size).to eq 3
    end

    it 'should generate a board^2 array' do
        board = Board.new(size: 3)
        expect(board.spaces).to eq 9
    end
end