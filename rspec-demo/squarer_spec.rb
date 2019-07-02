# frozen_string_literal: true

class Squarer
  def square(n)
    n * n
  end
end

describe Squarer do
  context 'when testing the Squarer class' do
    let(:squarer) { Squarer.new }

    it 'square a number' do
      expect(squarer.square(2)).to eq(4)
      expect(squarer.square(-1)).to eq(1)
      expect(squarer.square(11)).to eq(121)
    end
    it 'raise NoMethodError when nil is passed' do
      expect { squarer.square(nil) }.to raise_error(NoMethodError)
    end
    it 'raise ArgumentError when no arg is provided' do
      expect { squarer.square }.to raise_error(ArgumentError)
    end
  end
end
