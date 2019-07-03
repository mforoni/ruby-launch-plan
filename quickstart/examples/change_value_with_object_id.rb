# frozen_string_literal: false

def change_value(val)
  puts 'begin change_value(val)'
  puts '  val = ' + val.to_s + ', class = ' + val.class.to_s + ', object_id = ' + val.object_id.to_s
  puts '  val = 20'
  val = 20
  puts '  val = ' + val.to_s + ', class = ' + val.class.to_s + ', object_id = ' + val.object_id.to_s
  puts 'end change_value(val)'
end

x = 10
puts 'x = ' + x.to_s + ', class = ' + x.class.to_s + ', object_id = ' + x.object_id.to_s
change_value(x)
puts 'x = ' + x.to_s + ', class = ' + x.class.to_s + ', object_id = ' + x.object_id.to_s
puts
puts 'Immediate values are passed by value: nil, true, false, Fixnums, Symbols, and some Floats.'
