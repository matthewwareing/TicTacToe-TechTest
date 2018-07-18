require 'board.rb'

describe Board do
  it 'should return board size' do
    board = Board.new(size: 3)
    expect(board.size).to eq 3
  end

  it 'should generate board^2 array' do
    board = Board.new(size: 3)
    expect(board.spaces).to be_a_kind_of(Array)
    expect(board.spaces.length).to eq 9
  end

  it 'should be able to mark an index with a X' do
    board = Board.new(size: 3)
    board.mark(0, :x)
    expect(board.spaces[0]).to eq :x
  end

  it 'should be able to mark an index with a O' do
    board = Board.new(size: 3)
    board.mark(4, :O)
    expect(board.spaces[4]).to eq :O
  end

  it 'should raise error when mark already marked index' do
    board = Board.new(size: 3)
    board.mark(4, :O)
    expect { board.mark(4, :X) }.to raise_exception("You cannot mark an already marked space")
  end

  it 'should if any winning combination has been found' do
    board = Board.new(size: 3)
    expect(board.winner?(:x)).to eq false
  end

end
