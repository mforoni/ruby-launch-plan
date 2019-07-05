# frozen_string_literal: true

class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title  = title
    @author = author
  end

  def to_s
    title + ' - ' + author
  end
end

deep_dive = Book.new('Ruby Deep Dive', 'Jesus Castello')
boba = Book.new('BOBA', 'Grant Cardone')
puts deep_dive
puts boba

class Arrays
  def self.index_of(array, key)
    array.each_with_index do |a, i|
      return i if a == key
    end
    -1
  end
end

arr = [1, 3, 4, 7]
puts arr.inspect
key = 4
puts "The index of #{key} is #{Arrays.index_of(arr, key)}"
