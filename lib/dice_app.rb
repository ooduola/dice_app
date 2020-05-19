

class Dice

  attr_reader :record

  def initialize
    @record = []
  end

  def roll(number_of_dice)
    number_of_dice.times { @record << rand(1..6)}
  end

  def current_score
    @record.sum
  end
end
