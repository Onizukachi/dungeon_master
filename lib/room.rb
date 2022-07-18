class Room
  attr_reader :feature, :size, :content

  def initialize
    @content = get_content
    @size = get_size
    @feature = get_feature
  end

  def to_s
    "Now you are in #{size} room. It is #{feature}."
  end

  def interact(player)
    if @content
      @content.interact(player)
      @content = nil
    end
  end

  private

  def get_content
    [Monster, Potion, Sword].sample.new
  end

  def get_size
    %w[small medium huge].sample
  end

  def get_feature
    %w[terrible picturesque cozy smelly dark].sample
  end
end