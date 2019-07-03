# frozen_string_literal: false

def add_pair(hash)
  puts 'begin add_pair'
  puts '  hash = ' + hash.inspect + ', object_id = ' + hash.object_id.to_s
  puts '  hash[:foo] = bar'
  hash[:foo] = 'bar'
  puts '  hash = ' + hash.inspect + ', object_id = ' + hash.object_id.to_s
  puts 'end add_pair'
end

h = {}
puts 'h = ' + h.inspect + ', object_id = ' + h.object_id.to_s
add_pair(h)
puts 'h = ' + h.inspect + ', object_id = ' + h.object_id.to_s
puts
puts 'Non immediate values are passed by reference'
