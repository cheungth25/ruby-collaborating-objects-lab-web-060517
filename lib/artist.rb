class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(artist_name)
    @name = artist_name
    self.save
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    artist_found = self.all.detect { |artist| artist.name == artist_name}
    if artist_found
      return artist_found
    else
      new_artist = self.new(artist_name)
    end
    new_artist
  end

  def print_songs
    self.songs.each { |song| puts song.name}
  end
end
