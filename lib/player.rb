class Player

  attr_reader :name, :hp
  MAX_HP = 100
  MIN_DAMAGE = 10 

  def initialize(name, hp = MAX_HP)
    @name = name
    @hp = hp
  end

  def take_damage
    @hp -= MIN_DAMAGE
  end

  def attack(player)
    player.take_damage
  end
  
end

