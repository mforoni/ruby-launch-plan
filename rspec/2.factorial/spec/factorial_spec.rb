# frozen_string_literal: true

require 'spec_helper'
require File.expand_path('../factorial', __dir__)

describe Factorial do
  let(:f) { Factorial.new }

  it 'finds the factorial of 0' do
    expect(f.factorial_of(0)).to eq(1)
  end
  it 'finds the factorial of 1' do
    expect(f.factorial_of(1)).to eq(1)
  end
  it 'finds the factorial of 5' do
    expect(f.factorial_of(5)).to eq(120)
  end

  it 'raise ArgumentError for nil' do
    expect { f.factorial_of(nil) }.to raise_error(ArgumentError)
  end

  it 'raise ArgumentError for string Abc' do
    expect { f.factorial_of('Abc') }.to raise_error(ArgumentError)
  end
  it 'raise ArgumentError for string 0' do
    expect { f.factorial_of('0') }.to raise_error(ArgumentError)
  end

  it 'raise ArgumentError for float 3.5' do
    expect { f.factorial_of(3.5) }.to raise_error(ArgumentError)
  end
end
