require 'computer_player'

describe ComputerPlayer do
  let(:computer_player) { described_class.new(:o) }
  let(:board_with_one_empty_space) { double :board, positions: { 1 => 'X',
    2 => 'O', 3 => 'X', 4 => 'O', 5 => 'X',
    6 => 'O', 7 => 'X', 8 => 'O', 9 => ' '} }


  describe '#make_your_move' do
    it 'returns one of the unoccupied positions on the board' do
      expect(computer_player.make_your_move(board_with_one_empty_space)).to eq 9
    end
  end
end
