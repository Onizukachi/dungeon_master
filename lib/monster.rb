class Monster
  include Interact::MonsterInteract
  attr_accessor :hp, :attack_power

  MAX_XP = 10
  MAX_ATACK_POWER = 3

  def initialize
    @xp = MAX_XP
    @attack_power = MAX_ATACK_POWER
    @type = get_type_monster
  end

  def alive?
    @xp > 0
  end

  def hurt(amount)
    @xp -= amount
  end

  def to_s
    "#{@type.capitalize} monster with burning eyes. Aaaaaggrrrr....."
  end

  private
  
  def get_type_monster
    case @attack_power
    when 0 then 'weak'
    when 1 then 'goner'
    when 2 then 'pumped up'
    else 'Boss'
    end
  end
end
