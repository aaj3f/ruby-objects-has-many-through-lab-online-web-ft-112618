require "pry"

class Artist
  attr_reader :name, :songs, :genres

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    @songs = Song.all.select {|s| s.artist == self}
  end

  def genres
    @genres = self.songs.map {|s| s.genre}.uniq
  end

  #Class Methods
  def self.all
    @@all
  end
end
