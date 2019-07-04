# frozen_string_literal: true

puts 'Please, insert your name: '
name = gets
puts "Hi \'#{name}\', please insert your email: "
email = gets.chomp
puts "Thank you. Your email #{email} has been registered."
