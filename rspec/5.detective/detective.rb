# frozen_string_literal: true

require_relative 'thingie'

class Detective
  def initialize(thingie)
    @thingie = thingie
  end

  def investigate
    # "It went '#{@thingie.prod}'"
    @results ||= "It went '#{@thingie.prod}'"
  end
end

puts Detective.new(Thingie.new).investigate
