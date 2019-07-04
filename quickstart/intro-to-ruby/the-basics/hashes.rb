# frozen_string_literal: true

def print(hash, key)
  puts "The key #{key} is mapped to #{hash[key]}"
end

hash = { dog: 'barks', cat: 'meows', pig: 'oinks' }
puts hash.inspect

print(hash, :cat)
print(hash, 'cat')
print(hash, 'horse')
