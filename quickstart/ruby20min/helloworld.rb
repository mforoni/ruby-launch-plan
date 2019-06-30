#!/usr/bin/env ruby
# frozen_string_literal: true

def hi(name = 'World')
  puts "Hello #{name.capitalize}!"
end

if $PROGRAM_NAME == __FILE__
  ARGV[0].nil? ? hi : hi(ARGV[0])
end
