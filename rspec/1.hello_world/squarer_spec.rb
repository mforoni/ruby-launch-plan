# frozen_string_literal: true

class Squarer
  def square(num)
    num * num
  end
end

describe Squarer do
  let(:squarer) { Squarer.new }

  it 'square a number when an integer is passed' do
    expect(squarer.square(2)).to eq(4)
    expect(squarer.square(-1)).to eq(1)
    expect(squarer.square(11)).to eq(121)
  end

  it 'raise TypeError when a string is passed' do
    expect { squarer.square('a') }.to raise_error(TypeError)
  end

  it 'raise NoMethodError when nil is passed' do
    expect { squarer.square(nil) }.to raise_error(NoMethodError)
  end

  it 'raise ArgumentError when no arg is provided' do
    expect { squarer.square }.to raise_error(ArgumentError)
  end
end
