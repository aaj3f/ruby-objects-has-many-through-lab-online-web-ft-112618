class Genre
  attr_reader :name, :songs, :artists

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    @songs = Song.all.select {|s| s.genre == self}
  end

  def artists
    @artists = self.songs.map {|s| s.artist }.uniq
  end


  #Class Methods
  def self.all
    @@all
  end
end
