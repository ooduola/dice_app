require 'dice_app'

describe Dice do

  it { is_expected.to respond_to(:roll).with(1).argument}

  it { is_expected.to respond_to(:record) }

  context '#roll' do
    it 'returns a value between 1 and 6' do
      expect(subject.roll(1)).to be <= 6
      expect(subject.roll(1)).to be >= 1
    end
  end

end

