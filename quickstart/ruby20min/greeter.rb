#!/usr/bin/env ruby
# frozen_string_literal: true

class Greeter
  def initialize(name = 'World')
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end

  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end

if $PROGRAM_NAME == __FILE__
  g = ARGV[0].nil? ? Greeter.new : Greeter.new(ARGV[0])
  g.say_hi
  g.say_bye
end
