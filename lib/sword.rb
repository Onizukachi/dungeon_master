class Sword < Item
  def perform_item_effect(player)
    damage = rand(1..3)
    player.attack_power += damage
    
    puts "Damage increased by #{damage}"
  end
end