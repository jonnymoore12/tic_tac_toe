require 'player'

describe Player do
  let(:player) { described_class.new(:x) }

  it 'is initialized as an x or an o player' do
    expect(player.type).to eq :x
  end
end
