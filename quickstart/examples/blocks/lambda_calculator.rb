# frozen_string_literal: true

add = ->(x, y) { x + y }
sub = ->(x, y) { x - y }

def calculator(fun, x, y, name='undefined')
  result = fun.call(x, y)
  puts "#{x} #{name} #{y} = #{result}"
end

calculator(add, 3, 7, '+')
calculator(sub, 4, 6, '-')
