# frozen_string_literal: true

class Movie
  attr_accessor :name, :year

  def initialize(name, year)
    @name = name
    @year = year
  end

  def to_s
    @name + ' (' + @year.to_s + ')'
  end
end

# https://dev.to/ksato1995/ruby-getters-and-setters-1p30

movie = Movie.new('Forrest Gump', 1994)
puts movie
movie.name = 'Fight Club'
movie.year = 1999
puts movie
