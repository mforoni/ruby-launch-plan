# frozen_string_literal: true

def square(num)
  num * num
end

def square_and_puts(num)
  sq = square(num)
  puts format('The square of %d is %d', num, sq)
end

square_and_puts(5)

begin
  n = square(nil)
  puts n
rescue NoMethodError
  puts 'NoMethodError is raised when passing a nil argument'
end

begin
  n = square()
  puts n
rescue ArgumentError
  puts 'ArgumentError is raised when no arg is provided'
end
