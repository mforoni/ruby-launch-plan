# frozen_string_literal: true

require 'spec_helper'
require File.expand_path('../generator', __dir__)

describe Generator do
  it 'generates a random sequence of A' do
    generator = Generator.new

    allow(generator).to receive(:rand).and_return(5)

    expect(generator.randomA).to eq('AAAAA')
  end
end
