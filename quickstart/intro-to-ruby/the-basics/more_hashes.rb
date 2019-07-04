# frozen_string_literal: true

hash = { :name => 'Charles', 'name' => 'Something else' }
puts hash.inspect
puts hash[:name] #=> 'Charles'
puts hash['name'] #=> 'Something else'
