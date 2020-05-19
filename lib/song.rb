require 'pry'


class Song 
  @@all = []
  @@artists = []
  @@genres = []
  @@count = 0 
  
  
  attr_accessor :name, :artist, :genre
  
  def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre
    
    
    @@artists << artist 
    @@genres << genre
    @@all << self
    @@count += 1
  end
  
  def self.all
    @@all 
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @@genres.reduce({}) do |hash, element|
      if !hash[element]
        hash[element] = 1 
      else
        hash[element] += 1
      end
      hash
    end
  end
  
  def self.artist_count
    @@artists.reduce({}) do |hash, element|
      if !hash[element]
        hash[element] = 1 
      else 
        hash[element] += 1 
      end
      hash
    end
  end

  
end 
  