module Combatable
  BASE_STATA = {
    max_xp: 10,
    attack_power: 1
  }

  def self.included(base)
    attr_accessor :xp, :attack_power
  end

  def initialize_stats(stats)
    @stats = stats

    @xp = stats[:max_xp]
    @attack_power = stats[:attack_power]
  end

  def alive?
    @xp > 0
  end

  def hurt(amount)
    @xp -= amount
  end

  def heal(amount)
    @xp += amount
    @xp = [@stats[:max_xp], @xp].min
  end
end
