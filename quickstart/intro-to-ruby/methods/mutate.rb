a = [1, 2, 3]

# Example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
last = mutate(a)
p "Last element is #{last}"
p "After mutate method: #{a}"
