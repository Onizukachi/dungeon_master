class Game
  ACTIONS = [
    :north, :east, :south, :west, :look, :fight, :take, :status
  ]

  def initialize
    @hero = Hero.new
    @world = World.new

    start_game
  end

  private

  def start_game
    while @hero.alive?
      @current_room = @world.get_room_for(@hero)

      print_status

      action = take_player_input

      next unless ACTIONS.include?(action)

      take_action(action)
      sleep 3
      system "clear"  
    end
  end

  def print_status
    puts "You are at map coordinates [#{@hero.x_coord}, #{@hero.y_coord}]"

    puts @current_room

    if @current_room.content
      puts "You see #{@current_room.content}."
    end
  end

  def take_player_input
    print "What's the plan, Bro? Available commands:\n"
    show_actions
    puts
    gets.chomp.to_sym
  end

  def take_action(action)
    case action
    when :look 
      print_status
    when :north 
      @world.move_entity_north(@hero)
    when :south 
       @world.move_entity_south(@hero)
    when :west 
       @world.move_entity_west(@hero)
    when :east 
       @world.move_entity_east(@hero)
    when :fight, :take
       @current_room.interact(@hero)
    when :status 
       @hero.print_status
    end
  end

  def show_actions
    ACTIONS.each_with_index { |action, index| puts "#{index + 1}.#{action}"}
  end
end
