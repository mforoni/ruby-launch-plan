# frozen_string_literal: true

class Artwork
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def to_s
    title + ' - ' + author
  end
end

class Book < Artwork
  attr_reader :isbn

  def initialize(title, author, isbn)
    super(title, author)
    @isbn = isbn
  end
end

class Song < Artwork
  attr_reader :length

  def initialize(title, author, length = nil)
    super(title, author)
    @length = length
  end
end

song = Song.new('Man in the Mirror', 'Michael Jackson')
# puts song
book = Book.new('The future of Humanity', 'Michio Kaku', 'xyz')
# puts book

artworks = [song, book]
artworks.each do |a|
  puts a.to_s + ' is an Artwork ' if a.is_a?(Artwork)
  puts a.to_s + ' is a Book' if a.is_a?(Book)
  puts a.to_s + ' is a Song' if a.is_a?(Song)
end
