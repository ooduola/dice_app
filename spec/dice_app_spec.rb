require 'dice_app'

describe Dice do

  it { is_expected.to respond_to(:roll).with(1).argument}

  context '#roll' do
    it 'returns a value between 1 and 6' do
      expect(subject.roll(1)).to be <= 6
      expect(subject.roll(1)).to be >= 1
    end
  end

  it { is_expected.to respond_to(:record) }

  it 'records return value' do
    number = subject.roll(2)
    expect(subject.record[-1]).to eq(number)
  end
end

