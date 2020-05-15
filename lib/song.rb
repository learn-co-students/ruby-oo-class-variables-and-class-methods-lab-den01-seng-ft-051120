require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
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

  def self.genre_count
    @@genres.reduce({}) do |reduced_genres, genre|
      !reduced_genres[genre] ? reduced_genres[genre] = 1 : reduced_genres[genre] += 1
      reduced_genres
    end
  end

  def self.artist_count
    @@artists.reduce({}) do |reduced_artists, artist|
      !reduced_artists[artist] ? reduced_artists[artist] = 1 : reduced_artists[artist] += 1
      reduced_artists
    end
  end
end

