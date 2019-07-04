# frozen_string_literal: true

# Form 1: recommended for single line blocks
[1, 2, 3].each { |num| puts num }

# Form 2: recommended for multi-line blocks
[1, 2, 3].each do |num|
  puts num
end
