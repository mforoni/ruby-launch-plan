# frozen_string_literal: true

def compact_array(arr)
  puts 'begin compact_array(arr)'
  puts '  arr = ' + arr.inspect
  copy = arr.compact
  puts '  copy = arr.compact'
  puts '  arr = ' + arr.inspect
  puts '  copy = ' + copy.inspect
  puts 'end compact_array(arr)'
end

arr = [1, nil, 2]
puts 'arr = ' + arr.inspect
compact_array(arr)
puts 'arr = ' + arr.inspect # [1, nil, 2]
puts
puts 'arr.compact is a non mutating method'
