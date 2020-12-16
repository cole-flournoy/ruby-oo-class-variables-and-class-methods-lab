class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre   
        @@artists << artist 
    end

    def self.count
        @@count
    end

    def self.genres
        unique_genres = @@genres.uniq
    end

    def self.artists
        unique_artists = @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        genre_list = self.genres 
        genre_list.each do |g|
            genre_count[g] = 0
        end
        @@genres.each do |g|
            genre_count[g] += 1
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        artist_list = self.artists 
        artist_list.each do |a|
            artist_count[a] = 0
        end
        @@artists.each do |a|
            artist_count[a] += 1
        end
        artist_count
    end
end