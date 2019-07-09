# frozen_string_literal: true

require_relative 'model.rb'
require 'English'

module TodoListView
  def self.show_list(items)
    return if items.empty?

    s = StringIO.new
    items.each do |i|
      s << '- ' << i << $RS
    end
    puts s.string
  end

  def self.show(msg)
    return if msg.to_s.empty?

    print msg
  end

  def self.show_error(msg)
    raise ArgumentError if msg.empty?

    print 'Error: ' + msg
  end
end
