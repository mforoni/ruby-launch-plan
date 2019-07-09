# frozen_string_literal: true

class Item
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def to_s
    @text
  end
end
