# frozen_string_literal: true

require 'spec_helper'
require File.expand_path('../model', __dir__)

describe Item do
  let(:item) { Item.new('Do the dishes') }

  it 'should have text attribute' do
    expect(item).to have_attributes(text: 'Do the dishes')
  end
end
