require 'board'

describe Board do
  let(:board) { described_class.new }

  it 'is initialized with each position empty' do
    expect(board.positions[1]).to eq ''
  end

  describe '#show_board' do
    it 'displays the board' do
      expect(board.show_board).to eq "  |  |  \n  |  |  \n  |  |  "
    end
  end

  describe '#place_mark' do
    it 'can place marks of type x on the board in the correct position' do
      board.place_mark(1,:x)
      expect(board.show_board).to eq " X |  |  \n  |  |  \n  |  |  "
    end
    it 'can place marks of type o on the board in the correct position' do
      board.place_mark(9,:o)
      expect(board.show_board).to eq "  |  |  \n  |  |  \n  |  | O "
    end
  end
end
