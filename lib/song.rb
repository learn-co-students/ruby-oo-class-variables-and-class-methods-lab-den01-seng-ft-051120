require 'pry'

class Song
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1

        @@artists << artist
        @@genres << genre
        @@all << self

    end
    
    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end

    def self.genre_count
        totaled_genres = {}
        @@genres.each do |genre|
            if !totaled_genres.has_key?(genre)
                totaled_genres[genre] = 0
            end
            totaled_genres[genre] += 1
        end
        totaled_genres

    end

    def self.artist_count
        total_artist_songs = {}
        @@artists.each do |artist|
            if !total_artist_songs.has_key?(artist)
                total_artist_songs[artist] = 0
            end
            total_artist_songs[artist] += 1
        end
        total_artist_songs
    end


    
end
