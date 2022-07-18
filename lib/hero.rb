class Hero
  include Combatable
  attr_accessor :x_coord, :y_coord

  MAX_XP = 100

  def initialize
    initialize_stats(BASE_STATA.merge({
      max_xp: MAX_XP
    }))

    @x_coord = 0
    @y_coord = 0
  end

  def print_status
    puts '*' * 70
    puts "HP: #{@xp}/#{MAX_XP}"
    puts "Damage #{@attack_power}"
    puts '*' * 70
  end
end