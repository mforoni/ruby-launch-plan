# frozen_string_literal: true

ASK_FOR_NAME = 'Please insert your name'

def capture_name
  puts ASK_FOR_NAME
  gets.chomp
end
