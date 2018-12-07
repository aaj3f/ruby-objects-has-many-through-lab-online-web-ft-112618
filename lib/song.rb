class Song
  attr_accessor :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  #Class Methods
  def self.all
    @@all
  end

end
