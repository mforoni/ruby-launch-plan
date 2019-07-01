# frozen_string_literal: true

def compact_array(arr)
    puts 'begin compact_array(arr)'
    puts '  arr = ' + arr.inspect
    arr.compact!
    puts '  arr.compact!'
    puts '  arr = ' + arr.inspect
    puts 'end compact_array(arr)'
end

arr = [1, nil, 2]
puts 'arr = ' + arr.inspect
compact_array(arr)
puts 'arr = ' + arr.inspect # [1, nil, 2]
puts
puts 'arr.compact! is a mutating method'
