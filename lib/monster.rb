class Monster
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

  def interact(player)
    puts "#{'*' * 10}___Start Battle___#{'*' * 10}"

    while player.alive?
      puts "You hit the monster for #{player.attack_power} points."
      hurt(player.attack_power)
      sleep 1

      unless alive?
        puts "____You win____" 
        break
      end

      curr_damage = rand(@attack_power)
      player.hurt(curr_damage)

      if curr_damage.zero?
        puts "The monster missed"
      else
        puts "The monster hits you for #{curr_damage } points."
      end

      sleep 1
    end
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
