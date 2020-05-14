class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres =[]

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
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
    genre_count = {}
    self.genres.collect do |genre, song|
      genre_count[genre] = self.genres.count
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    self.artists.collect do |artist, song|
      artist_count[artist] = self.artists.count
    end
    artist_count
  end

end
