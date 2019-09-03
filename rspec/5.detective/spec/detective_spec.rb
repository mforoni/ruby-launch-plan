# frozen_string_literal: true

require 'spec_helper'
require File.expand_path('../detective', __dir__)

describe 'detective' do
  it 'says what noise the thingie makes' do
    thingie = double(:thingie, prod: 'oi')
    subject = Detective.new(thingie)

    result = subject.investigate

    expect(result).to eq "It went 'oi'"
  end

  it 'prods the thingie at most once' do
    prod_count = 0
    thingie = double(:thingie)
    allow(thingie).to receive(:prod) { prod_count += 1 }
    subject = Detective.new(thingie)

    subject.investigate
    subject.investigate

    expect(prod_count).to eq 1
  end

  it 'prods the thingie at most once' do
    # Arrange
    thingie = double(:thingie)
    # Assert
    expect(thingie).to receive(:prod).once
    # Arrange
    subject = Detective.new(thingie)

    # Act
    subject.investigate
    subject.investigate
  end

  it 'prods the thingie at most once' do
    # Arrange
    thingie = double(:thingie, prod: '')
    subject = Detective.new(thingie)

    # Act
    subject.investigate
    subject.investigate

    # Assert
    expect(thingie).to have_received(:prod).once
  end
end
