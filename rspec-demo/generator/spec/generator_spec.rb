# frozen_string_literal: true

require 'spec_helper'
require File.expand_path('../generator', __dir__)

describe NumberGenerator do
  it 'generates a random sequence of A' do
    generator = NumberGenerator.new

    allow(generator).to receive(:rand).and_return(5)

    expect(generator.random).to eq('AAAAA')
  end
end
