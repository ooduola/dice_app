require 'dice_app'

describe Dice do

  context '#current_score' do
    it { is_expected.to respond_to(:current_score) }

    it 'return total value of recored rolls' do
      subject.roll(1)
      expect(subject.current_score).to eq(subject.record.sum)
    end
  end

  context '#roll' do
    it { is_expected.to respond_to(:roll).with(1).argument}

    it 'returns a value between 1 and 6' do
      expect(subject.roll(1)).to be <= 6
      expect(subject.roll(1)).to be >= 1
    end
  end

  context '#record'do
    it { is_expected.to respond_to(:record) }

    it 'records return value' do
      subject.roll(2)
      expect(subject.record.length).to eq(2)
    end
  end
end
