# frozen_string_literal: false

def change_value(val)
  puts 'change_value(val) is called. It will perform: val = 20'
  val = 20
end

x = 10
puts 'x = ' + x.to_s # 10
change_value(x)
puts 'x = ' + x.to_s # 10
