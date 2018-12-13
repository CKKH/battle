require 'player'

describe Player do
  subject(:player_1) { described_class.new('Mario') }
  subject(:player_2) { described_class.new('Bowzer') }

  describe '#name' do
    it 'should return player 1' do
      expect(player_1.name).to eq('Mario')
    end
  end

  describe '#hp' do
    it "returns player hit points" do
      expect(player_1.hp).to eq (Player::MAX_HP)
    end
  end

  describe '#take_damage' do
    it 'damages the player by 10' do
      expect { player_1.take_damage }.to change { player_1.hp }.by -Player::MIN_DAMAGE
    end
  end

  describe '#attack' do
    it 'attacks opposite player, triggering them to take_damage' do
      expect { player_1.attack(player_2) }.to change { player_2.hp }.by -Player::MIN_DAMAGE
    end
  end

end
