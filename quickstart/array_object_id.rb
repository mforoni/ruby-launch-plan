# frozen_string_literal: false

def add_element(arr)
  puts 'begin add_element(arr)'
  puts '  arr = ' + arr.inspect + ', object_id = ' + arr.object_id.to_s
  tmp = arr
  puts '  tmp = arr'
  puts '  tmp = ' + tmp.inspect + ', object_id = ' + tmp.object_id.to_s
  tmp << 3
  puts '  tmp << 3'
  puts '  tmp = ' + tmp.inspect + ', object_id = ' + tmp.object_id.to_s
  puts 'end add_element(arr)'
end

arr = [1, 2]
puts 'arr = ' + arr.inspect + ', object_id = ' + arr.object_id.to_s
add_element(arr)
puts 'arr = ' + arr.inspect + ', object_id = ' + arr.object_id.to_s  # [1, 2, 3]
