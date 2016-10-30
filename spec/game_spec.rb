require 'game'

describe Game do
  let(:game) { described_class.new(board, x_player, o_player) }
  let(:board) { instance_spy("board") }
  let(:x_player) { instance_spy("x_player") }
  let(:o_player) { instance_spy("o_player") }

  it 'takes a board on initialization' do
    expect(game.board).to eq board
  end
  it 'x_player begins the game first' do
    expect(game.current_player).to eq x_player
  end

  # describe '#place_your_mark' do
  #   it 'prompts a player to move' do
  #     game.place_your_mark
  #     expect(game.current_player).to have_received(:make_your_move)
  #   end
  # end

  describe '#swap_turns' do
    it "changes to o_player if currently x_player's turn" do
      game.swap_turns
      expect(game.current_player).to eq o_player
    end
    it "changes to x_player if currently o_player's turn" do
      game.swap_turns
      expect(game.current_player).to eq o_player
      game.swap_turns
      expect(game.current_player).to eq x_player
    end
  end

  describe '#game_over' do
    context 'the game has finished' do
      before do
        allow(game).to receive(:three_in_a_row?).and_return true
      end

      it "returns true if a move finishes the game" do
        expect(game.game_over?).to be true
      end
    end

    context 'no one has won the game yet' do
      it 'returns false' do
        expect(game.game_over?).to be false
      end
    end
  end
end
