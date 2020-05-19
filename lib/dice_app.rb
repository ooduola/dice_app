class Dice

  def record
    @record = []
  end

  def roll(number_of_dice)
    rand(1..6)
  end

end
