require 'dice_app'

describe Dice do
  
  it 'responds to #roll' do
    expect(subject).to respond_to(:roll).with(1).argument
  end

  context '#roll' do
    it 'returns a value between 1 and 6' do
      expect(subject.roll(1)).to be <= 6
    end
  end

end