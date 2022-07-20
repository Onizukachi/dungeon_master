class Item
  include Interact::ItemInteract

  def to_s
    "incredible #{self.class}"
  end

  def perform_item_effect(player)
  end
end
