require 'game'
require 'board'

describe 'game#over?' do
    it 'should end the game once a winning solution is found' do        
        game = Game.new
        board = Board.new
        board.mark(0, :x)
        board.mark(1, :x)
        board.mark(2, :x)
        board.mark(3, :y)
        board.mark(5, :y)
        expect(game.over?).to eq true
    end
  end