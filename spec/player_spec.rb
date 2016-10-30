require 'player'

describe Player do
  let(:player) { described_class.new(:x) }

  it 'is initialized as an x or an o player' do
    expect(player.type).to eq :x
  end

  # Not sure how to test this
  # describe '#make_your_move' do
  #   # it "accepts the player's move and records it on the board" do
  #
  #   end
  # end
end
