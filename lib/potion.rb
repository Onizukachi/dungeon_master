class Potion < Item
  MAX_RECOVERY_AMOUNT = 20

  attr_reader :recovery_amount

  def initialize(recovery_amount: 3)
    @recovery_amount = set_recovery_amount(recovery_amount)
  end

  def perform_item_effect(player)
    player.heal(recovery_amount)
  end

  private

  def set_recovery_amount(amount)
    amount < MAX_RECOVERY_AMOUNT ? amount : 3
  end
end
