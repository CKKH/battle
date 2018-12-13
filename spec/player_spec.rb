require 'player'
describe Player do
  subject(:player) { described_class.new('Chris') }

  it 'should return player name' do
    expect(subject.name).to eq('Chris')
  end

end
