# frozen_string_literal: false

puts 'In Ruby, each object has unique object id:'
puts '  nil.object_id = ' + nil.object_id.to_s # => 8
puts "  \'foo\'.object_id = " + 'foo'.object_id.to_s

puts 'Some interesting results:'
puts '  Object.new.object_id == Object.new.object_id ? ' +
     (Object.new.object_id == Object.new.object_id).to_s # => false
puts '  (21 * 2).object_id == (21 * 2).object_id ? ' +
     ((21 * 2).object_id == (21 * 2).object_id).to_s # => true
puts '  \'hello\'.object_id == \'hello\'.object_id ? ' +
     ('hello'.object_id == 'hello'.object_id).to_s # => false
puts '  \'hi\'.freeze.object_id == \'hi\'.freeze.object_id ? ' +
     ('hi'.freeze.object_id == 'hi'.freeze.object_id).to_s # => true

