

class Dice

  attr_reader :record

  def initialize
    @record = []
  end

  def roll(number_of_dice)
    dice_roll = rand(1..6)
    @record << dice_roll
    dice_roll
  end

end
