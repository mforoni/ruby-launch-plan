# Let's try to play a little bit more with this concept to understand how
# it works:
puts '10.object_id = ' + 10.object_id.to_s # 21

a = 10 # object_id: 21
puts 'a = 10'
puts 'a.object_id = ' + a.object_id.to_s # 21

a = 20 # object_id: 41
puts 'a = 20'
puts 'a.object_id = ' + a.object_id.to_s # 41

b = a # object_id of b: 41
puts 'b = a'
puts 'b.object_id = ' + b.object_id.to_s # 41

b = 30
puts 'b = 30'
puts 'b.object_id = ' + b.object_id.to_s
puts 'a.object_id = ' + a.object_id.to_s
