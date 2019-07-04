# frozen_string_literal: true

my_proc = proc { |x| puts x }
my_proc.call(5)

t = proc { |_x, _y| puts "I don't care about arguments!" }
t.call

my_lambda = -> { return 1 }
puts "Lambda result: #{my_lambda.call}" # Should work

my_proc = proc { return 1 }
begin
  puts "Proc result: #{my_proc.call}" # Should raise exception
rescue LocalJumpError
  puts 'Cannot return from proc'
end