# frozen_string_literal: true

def print(arr, index)
  puts "The element at position #{index} is: #{arr[index]}"
end

arr = [1, 2, 3, 4, 5]
puts arr.inspect
print(arr, 4)
print(arr, 12)