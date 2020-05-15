class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    @@all_songs = []

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist 
        @@genres << genre
        @@all_songs << self
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
        number_of_songs_per_genre = {}

        @@genres.map { |genre| number_of_songs_per_genre[genre] ? 
            number_of_songs_per_genre[genre] += 1
                : number_of_songs_per_genre[genre] = 1 }

        number_of_songs_per_genre
    end

    def self.artist_count
        number_of_songs_per_artist = {}

        @@artists.map { |artist| number_of_songs_per_artist[artist] ? 
            number_of_songs_per_artist[artist] += 1
                : number_of_songs_per_artist[artist] = 1}

        number_of_songs_per_artist
    end
end