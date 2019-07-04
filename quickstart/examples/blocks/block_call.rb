# frozen_string_literal: true

def explicit_block(&block)
  block.call # same as yield
end
explicit_block { puts 'Explicit block called' }

def do_something_with_block
  return 'No block given' unless block_given?

  yield
end

puts do_something_with_block
