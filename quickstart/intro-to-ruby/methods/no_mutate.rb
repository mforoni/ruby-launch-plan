# frozen_string_literal: true

a = [1, 2, 3]

# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
last = no_mutate(a)
p "Last element is #{last}"
p "After no_mutate method: #{a}"
