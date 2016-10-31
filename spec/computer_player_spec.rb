require 'computer_player'

describe ComputerPlayer do
  let(:player) { described_class.new(:o) }

  it 'is initialized as an x or an o player' do
    expect(player.type).to eq :o
  end
end
