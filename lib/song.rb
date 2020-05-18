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
    # @@all.map(&:artist).uniq
    @@artists.uniq
  end

  def self.genres
    # @@all.map(&:genre).uniq
    @@genres.uniq
  end

  # def self.song_by_category_sorter(category_to_sort)
  #   @@all.reduce({}) do |sorted_category, song_info|
  #     binding.pry
  #     if song_info.category_to_sort.nil?
  #       sorted_category[category_to_sort] = 1
  #     else
  #       sorted_category[category_to_sort] += 1
  #     end
  #   end
  # end

  def self.genre_count
    # song_by_category_sorter(&:genre)
    @@genres.reduce({}) do |genres_count, genre|
      if genres_count[genre].nil?
        genres_count[genre] = 1
      else
        genres_count[genre] += 1
      end
      genres_count
    end
  end

  def self.artist_count
    @@artists.reduce({}) do |artists_count, artist|
      if artists_count[artist].nil?
        artists_count[artist] = 1
      else
        artists_count[artist] += 1
      end
      artists_count
    end
  end
end
