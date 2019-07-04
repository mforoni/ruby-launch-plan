# frozen_string_literal: true

def fibonacci(num)
  if num < 2
    num
  else
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end

answer = nil
loop do
  puts 'Insert a number:'
  answer = gets.chomp
  break if Integer(answer) rescue false
end

num = Integer(answer)
puts "Fibonacci(#{num}) = #{fibonacci(num)}"
