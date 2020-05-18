require 'pry'

class Song
  @@all = []
  @@artists = []
  @@genres = []
  @@count = 0

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def all
    @@all
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.song_by_category_parser(category_to_parse)
    category_to_parse.reduce({}) do |parsed_category, category_element|
      if parsed_category[category_element].nil?
        parsed_category[category_element] = 1
      else
        parsed_category[category_element] += 1
      end
      parsed_category
    end
  end

  def self.genre_count
    song_by_category_parser(@@genres)
  end

  def self.artist_count
    song_by_category_parser(@@artists)
  end
end
