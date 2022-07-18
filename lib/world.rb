class World
  WORD_HEIGHT = 10
  WORD_WIDTH = 10

  def initialize
    @rooms = Array.new(WORD_HEIGHT, Array.new(WORD_WIDTH))
  end

  def move_entity_north(entity)
    entity.y_coord -= 1 if entity.y_coord > 0
  end

  def move_entity_south(entity)
    entity.y_coord += 1 if entity.y_coord < WORD_HEIGHT - 1
  end

  def move_entity_west(entity)
    entity.x_coord -= 1 if entity.x_coord > 0
  end

  def move_entity_east(entity)
    entity.x_coord += 1 if entity.x_coord < WORD_WIDTH - 1
  end

  def get_room_for(entity)
    @rooms[entity.x_coord][entity.y_coord] = Room.new
  end
end
