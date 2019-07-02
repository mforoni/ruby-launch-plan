# frozen_string_literal: true

require 'spec_helper'
require File.expand_path('../image_flipper', __dir__)

RSpec.describe 'ImageFlipper' do
  it 'calls the flip method with the correct arguments' do
    mock = double('mini_magick')
    expect(mock).to receive(:flip).with('ruby.jpg')
    img = ImageFlipper.new(mock)
    img.flip('ruby.jpg')
  end
end
