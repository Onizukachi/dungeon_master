module Interact
  module MonsterInteract
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
  end

  module ItemInteract
    def interact(player)
      puts "You pick up #{self}"
  
      perform_item_effect(player)
    end
  end
end
