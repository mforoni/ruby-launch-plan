# frozen_string_literal: true

require 'spec_helper'
require File.expand_path('../calculator', __dir__)

describe 'calculator' do
  it 'adds numbers' do
    calc = Calculator.new
    expect(calc.add(2, 3)).to eql(5)
  end
end
