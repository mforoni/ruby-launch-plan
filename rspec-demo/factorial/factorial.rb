# frozen_string_literal: true

class Factorial
  # Returns the factorial of the given positive integer number.
  # Raise ArgumentError if the argument is not a positive integer
  # number or zero.
  def factorial_of(num)
    if num.nil? && (num != 0 || num.negative?)
      raise ArgumentError, 'factorial_of is expecting a positive integer or zero'
    end
    if num.is_a?(Float)
      raise ArgumentError, 'factorial_of is not accepting float numbers'
    end

    f = 1
    (1..num).each do |i|
      f *= i
    end
    f
    # 1 if num.zero?
    # (1..num).inject(:*) if num.positive?
  end
end

if $PROGRAM_NAME == __FILE__
  f = Factorial.new
  num = ARGV[0].nil? ? 5 : ARGV[0].to_i
  puts format('The factorial of %d is %d', num, f.factorial_of(num))
end
