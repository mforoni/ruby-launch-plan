# frozen_string_literal: true

say_something = -> { puts 'This is a lambda' }
say_something.call

times_two = ->(x) { x * 2 }
y = times_two.call(10)

print_x = ->(x) { puts x }
print_x.call(y)