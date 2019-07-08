# frozen_string_literal: true

require_relative 'my_print'

def run
  stop = false
  puts 'Type quit to exit'
  until stop
    print '> ' # which print is going to be called? MyPrint.print or Kernel.print?
    input = gets.chomp!
    stop = true if input == 'quit'
  end
end

include MyPrint

run
