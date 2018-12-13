require 'player'
describe Player do
  subject(:player_1) { described_class.new('Mario') }
  subject(:player_2) { described_class.new('Bowzer') }

  it 'should return player 1 name' do
    expect(player_1.name).to eq('Mario')
  end

  it 'should return player 2 name' do
    expect(player_2.name).to eq('Bowzer')
  end

end
